-- Pandoc filter: the guide's Markdown conventions (see guide/STYLE.md) for the Typst PDF.
-- build.py wraps each chapter in a Div with class "chapter" and attributes slug, title,
-- description; metadata `lang` and `assets` (absolute path of guide/src/assets, with /).
--
-- - Headings get labels "<part>:<chapter>--<anchor>" (anchors made like GitHub/Starlight);
--   the chapter title becomes a level-1 heading labelled "<part>:<chapter>".
-- - Links to /part/chapter/#anchor become links to those labels; to labels that do not exist,
--   plain text.
-- - screen:/diagram: images become figures with the picture in the right language.
-- - :::tip[Title] asides (build.py turns them into Divs with class "aside") become #aside.
-- - <kbd>…</kbd> becomes #kbd[…].

local lang = "en"
local assets = ""
local labels = {}

local function typst(inlines)
  local doc = pandoc.Pandoc({ pandoc.Plain(inlines) })
  return (pandoc.write(doc, "typst"):gsub("%s+$", ""))
end

local function str_lit(s)
  return '"' .. s:gsub("\\", "\\\\"):gsub('"', '\\"') .. '"'
end

-- GitHub-style anchor: lowercase, drop punctuation, spaces to hyphens.
local function slugify(text)
  local s = pandoc.text.lower(text)
  s = s:gsub("[%c%p]", function(c)
    if c == "-" or c == "_" then return c end
    return ""
  end)
  s = s:gsub(" ", "-")
  return s
end

local function label_for(slug, anchor)
  local base = slug:gsub("/", ":")
  if anchor == nil or anchor == "" then return base end
  return base .. "--" .. anchor
end

local function image_block(img)
  local src = img.src
  local kind, name = src:match("^(%a+):(.+)$")
  local path, width
  if kind == "screen" then
    path = assets .. "/screens/" .. lang .. "/" .. name:lower() .. ".png"
    width = "100%"
  elseif kind == "diagram" then
    path = assets .. "/diagrams/" .. lang .. "/" .. name .. ".svg"
    width = "92%"
  else
    return nil
  end
  local caption = typst(img.caption)
  local fig = string.format('#figure(image(%s, width: %s), kind: image, caption: [%s])', str_lit(path), width, caption)
  return pandoc.RawBlock("typst", fig)
end

local function chapter(div)
  local slug = div.attributes.slug
  local seen = {}
  local blocks = pandoc.List()
  local title = div.attributes.title
  local desc = div.attributes.description or ""
  blocks:insert(pandoc.RawBlock("typst", string.format("#chapter-start(%s, %s)", str_lit(title), str_lit(desc))))
  local h = pandoc.Header(1, pandoc.Str(title))
  h.identifier = label_for(slug)
  labels[h.identifier] = true
  blocks:insert(h)
  local body = pandoc.Pandoc(div.content):walk({
    Header = function(el)
      local a = slugify(pandoc.utils.stringify(el.content))
      local n = seen[a]
      seen[a] = (n or 0) + 1
      if n then a = a .. "-" .. n end
      el.identifier = label_for(slug, a)
      labels[el.identifier] = true
      el.classes = {}
      return el
    end,
    -- A link within the page: resolved with the others once every label is known.
    Link = function(l)
      if l.target:sub(1, 1) == "#" then
        l.target = "/" .. slug .. "/" .. l.target
        return l
      end
    end,
  })
  blocks:extend(body.blocks)
  return blocks
end

local function aside(div)
  local kind = div.attributes.kind or "note"
  local title = div.attributes.title
  local out = pandoc.List()
  out:insert(pandoc.RawBlock("typst", string.format("#aside(kind: %s, title: %s)[", str_lit(kind),
    title and str_lit(title) or "none")))
  out:extend(div.content)
  out:insert(pandoc.RawBlock("typst", "]"))
  return out
end

local function first_pass(doc)
  return doc:walk({
    Para = function(p)
      if #p.content == 1 and p.content[1].t == "Image" then
        return image_block(p.content[1])
      end
    end,
    Figure = function(f)
      local img
      f:walk({ Image = function(i) img = i end })
      if img then
        img.caption = pandoc.utils.blocks_to_inlines(f.caption.long)
        return image_block(img)
      end
    end,
    RawInline = function(r)
      if r.format == "html" then
        if r.text:lower() == "<kbd>" then return pandoc.RawInline("typst", "#kbd[") end
        if r.text:lower() == "</kbd>" then return pandoc.RawInline("typst", "]") end
        return {}
      end
    end,
    RawBlock = function(r)
      if r.format == "html" then return {} end
    end,
  })
end

local function link_target(url)
  local path, anchor = url:match("^/([^#]*)#?(.*)$")
  if not path then return nil end
  path = path:gsub("/$", "")
  if path == "" then return nil end
  return label_for(path, anchor ~= "" and anchor or nil)
end

function Pandoc(doc)
  lang = pandoc.utils.stringify(doc.meta.lang or "en")
  assets = pandoc.utils.stringify(doc.meta.assets or "")
  doc = first_pass(doc)
  -- Chapters and asides (chapters first, so their headings are labelled).
  doc = doc:walk({
    Div = function(div)
      if div.classes:includes("aside") then return aside(div) end
    end,
  })
  local blocks = pandoc.List()
  for _, b in ipairs(doc.blocks) do
    if b.t == "Div" and b.classes:includes("chapter") then
      blocks:extend(chapter(b))
    elseif b.t == "Div" and b.classes:includes("part") then
      blocks:insert(pandoc.RawBlock("typst", string.format("#part-page(%s, %s)", str_lit(b.attributes.number),
        str_lit(b.attributes.title))))
    else
      blocks:insert(b)
    end
  end
  doc.blocks = blocks
  -- Links inside the guide.
  doc = doc:walk({
    Link = function(l)
      local t = link_target(l.target)
      if t then
        if labels[t] then
          l.target = "#" .. t
          return l
        end
        -- A section that does not exist: the chapter, else plain text.
        local chap = t:match("^(.-)%-%-") or t
        if labels[chap] then
          l.target = "#" .. chap
          return l
        end
        return l.content
      end
    end,
  })
  return doc
end
