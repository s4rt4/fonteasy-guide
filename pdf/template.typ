// The FontEasy guide as a book. build.py writes main.typ, which calls `guide` with the
// language and includes the body that Pandoc made from the chapters (see guide.lua).

#let navy = rgb("#0f0e3d")
#let accent = rgb("#5b5bf0")
#let accent-light = rgb("#c9c9ff")
#let ink = rgb("#1f2330")
#let muted = rgb("#6b7088")
#let serif = "Source Serif 4"
#let sans = "Source Sans 3"
#let mono = "Source Code Pro"

#let strings = (
  en: (
    note: "Note", tip: "Tip", caution: "Caution", danger: "Danger",
    chapter: "Chapter", part: "Part", figure: "Figure", contents: "Contents",
    title: "User Guide", subtitle: "From your first letter to a finished font",
    version: "For FontEasy 1.5", edition: "First edition, October 2026",
    blurb: "FontEasy is a free font editor for Windows. This guide takes you from the very first idea to a finished font that you can install, share and sell: drawing letters, spacing and kerning, OpenType features, variable and colour fonts, checking and exporting. Every term is explained, every step is shown.",
    rights: "Part of the FontEasy project (MIT or Apache-2.0). Set in Source Serif 4, Source Sans 3 and Source Code Pro (SIL Open Font License). Screenshots show FontEasy 1.5 with Source Serif 4, Mutator Sans and Source Code Pro.",
    web: "Read online and search: s4rt4.github.io/fonteasy-guide",
  ),
  id: (
    note: "Catatan", tip: "Tips", caution: "Perhatian", danger: "Bahaya",
    chapter: "Bab", part: "Bagian", figure: "Gambar", contents: "Daftar Isi",
    title: "Panduan Pengguna", subtitle: "Dari huruf pertama hingga font yang siap dipakai",
    version: "Untuk FontEasy 1.5", edition: "Edisi pertama, Oktober 2026",
    blurb: "FontEasy adalah editor font gratis untuk Windows. Panduan ini menemani Anda dari ide pertama hingga font jadi yang bisa dipasang, dibagikan, dan dijual: menggambar huruf, spasi dan kerning, fitur OpenType, font variabel dan font warna, pemeriksaan, hingga ekspor. Setiap istilah dijelaskan, setiap langkah diperlihatkan.",
    rights: "Bagian dari proyek FontEasy (MIT atau Apache-2.0). Diset dengan Source Serif 4, Source Sans 3, dan Source Code Pro (SIL Open Font License). Tangkapan layar memperlihatkan FontEasy 1.5 dengan Source Serif 4, Mutator Sans, dan Source Code Pro.",
    web: "Baca daring dan cari topik: s4rt4.github.io/fonteasy-guide/id",
  ),
)

#let lang-state = state("guide-lang", "en")
#let chapter-desc = state("chapter-desc", "")
#let tr(key) = context strings.at(lang-state.get()).at(key)

// A key on the keyboard.
#let kbd(body) = box(
  inset: (x: 3pt), outset: (y: 2.2pt), radius: 2pt,
  stroke: 0.5pt + luma(150), fill: luma(246),
  text(font: mono, size: 0.8em, fill: ink, body),
)

// Note / tip / caution / danger boxes.
#let aside(kind: "note", title: none, body) = context {
  let s = strings.at(lang-state.get())
  let c = (note: accent, tip: rgb("#2a9d8f"), caution: rgb("#d08a1c"), danger: rgb("#e63946")).at(kind, default: accent)
  block(
    width: 100%, breakable: true, fill: c.lighten(91%), stroke: (left: 2.5pt + c),
    inset: (left: 11pt, right: 10pt, top: 8pt, bottom: 9pt), radius: (right: 3pt),
    above: 1.3em, below: 1.3em,
  )[
    #text(font: sans, weight: "semibold", size: 0.92em, fill: c.darken(25%), if title != none { title } else { s.at(kind) })
    #v(-0.35em)
    #set par(spacing: 0.75em)
    #body
  ]
}

// Before each chapter: a fresh page and the chapter's one-line description.
#let chapter-start(title, desc) = {
  pagebreak(weak: true)
  chapter-desc.update(desc)
}

// A full navy page for each part of the book.
#let part-page(number, title) = {
  pagebreak(weak: true)
  [#metadata((kind: "part", number: number, title: title)) <part-marker>]
  page(fill: navy, header: none, footer: none, margin: (x: 22mm, y: 30mm))[
    #set text(fill: white)
    #v(1fr)
    #if number != "" {
      text(font: sans, size: 13pt, weight: "semibold", fill: accent-light, tracking: 0.12em, upper(number))
      v(4mm)
    }
    #line(length: 22mm, stroke: 2pt + accent)
    #v(6mm)
    #text(font: sans, size: 30pt, weight: "bold", hyphenate: false, title)
    #v(2fr)
  ]
}

// The table of contents: parts, chapters and their sections.
#let contents() = context {
  let s = strings.at(lang-state.get())
  heading(level: 1, numbering: none, outlined: false, s.contents)
  let items = query(selector(<part-marker>).or(heading.where(level: 1, outlined: true)).or(heading.where(level: 2, outlined: true)))
  for it in items {
    let loc = it.location()
    let page = counter(page).at(loc).first()
    if it.func() == metadata {
      v(5mm, weak: true)
      block(below: 2.5mm, sticky: true, text(font: sans, weight: "bold", size: 10pt, fill: accent, if it.value.number == "" { it.value.title } else { upper(it.value.number) + " · " + it.value.title }))
    } else if it.level == 1 {
      let n = counter(heading).at(loc).first()
      v(1.6mm, weak: true)
      link(loc, block(below: 1.2mm, sticky: true, text(font: sans, weight: "semibold", size: 10.5pt, fill: ink)[
        #box(width: 8mm, str(n)) #it.body #box(width: 1fr, repeat[ ]) #page
      ]))
    } else {
      let n = counter(heading).at(loc)
      link(loc, block(above: 0.6mm, below: 0.6mm, inset: (left: 8mm), text(size: 8.6pt, fill: muted)[
        #box(width: 9mm, n.slice(0, 2).map(str).join(".")) #it.body #box(width: 1fr, repeat[#h(1.5pt).#h(1.5pt)]) #page
      ]))
    }
  }
}

#let cover(lang, art, logo) = {
  let s = strings.at(lang)
  page(fill: navy, margin: 0pt, header: none, footer: none)[
    #place(top + right, dx: 14mm, dy: -2mm, image(art, width: 136mm))
    #place(top + left, dx: 18mm, dy: 18mm, image(logo, width: 17mm))
    #place(bottom + left, dx: 18mm, dy: -24mm, block(width: 134mm)[
      #set text(fill: white, hyphenate: false)
      #text(font: sans, size: 12pt, weight: "semibold", fill: accent-light, tracking: 0.14em, upper(s.version))
      #v(3mm)
      #text(font: sans, size: 52pt, weight: "black", tracking: -0.01em)[FontEasy]
      #v(-9mm)
      #text(font: sans, size: 28pt, weight: "light", s.title)
      #v(5mm)
      #line(length: 26mm, stroke: 2.5pt + accent)
      #v(4mm)
      #text(font: serif, size: 14pt, style: "italic", fill: luma(225), s.subtitle)
    ])
  ]
}

#let title-pages(lang, logo) = {
  let s = strings.at(lang)
  page(header: none, footer: none)[
    #v(1fr)
    #align(center)[
      #image(logo, width: 20mm)
      #v(8mm)
      #text(font: sans, size: 30pt, weight: "bold", fill: navy)[FontEasy]
      #v(-4mm)
      #text(font: sans, size: 18pt, weight: "light", fill: navy, s.title)
      #v(4mm)
      #text(style: "italic", fill: muted, s.subtitle)
    ]
    #v(2fr)
  ]
  page(header: none, footer: none)[
    #v(1fr)
    #set text(size: 8.5pt, fill: muted)
    #set par(justify: false)
    *FontEasy — #s.title* \
    #s.version · #s.edition \
    #s.web
    #v(3mm)
    #s.rights
  ]
}

#let back-cover(lang, logo) = {
  let s = strings.at(lang)
  pagebreak(weak: true)
  page(fill: navy, margin: (x: 22mm, y: 28mm), header: none, footer: none)[
    #set text(fill: white)
    #v(1fr)
    #block(width: 110mm, text(font: serif, size: 12.5pt, s.blurb))
    #v(8mm)
    #text(font: sans, size: 10pt, fill: accent-light, s.web)
    #v(2fr)
    #image(logo, width: 14mm)
  ]
}

#let guide(lang: "en", art: none, logo: none, body) = {
  let s = strings.at(lang)
  set document(title: "FontEasy — " + s.title, author: "FontEasy")
  set text(font: serif, size: 10.2pt, fill: ink, lang: lang, hyphenate: true, number-type: "lining")
  set par(justify: true, leading: 0.66em, spacing: 0.95em)
  set page(
    width: 170mm, height: 240mm,
    margin: (inside: 21mm, outside: 17mm, top: 22mm, bottom: 22mm),
    header: context {
      let p = here().page()
      let starts = query(heading.where(level: 1)).filter(h => h.location().page() == p)
      if starts.len() > 0 { return }
      let prev = query(selector(heading.where(level: 1, outlined: true)).before(here()))
      if prev.len() == 0 { return }
      let chap = prev.last()
      let n = counter(heading).at(chap.location()).first()
      set text(font: sans, size: 8pt, fill: muted)
      let label = [#s.chapter #n · #chap.body]
      if calc.even(p) { label; h(1fr) } else { h(1fr); label }
      v(-2.2mm)
      line(length: 100%, stroke: 0.4pt + luma(215))
    },
    footer: context {
      let p = here().page()
      set text(font: sans, size: 8.5pt, fill: muted)
      if calc.even(p) { counter(page).display(); h(1fr) } else { h(1fr); counter(page).display() }
    },
  )
  lang-state.update(lang)

  // Headings.
  set heading(numbering: (..n) => if n.pos().len() <= 2 { n.pos().map(str).join(".") })
  show heading: set text(font: sans, fill: navy, hyphenate: false)
  show heading.where(level: 1): it => {
    counter(figure.where(kind: image)).update(0)
    if it.numbering == none {
      block(below: 8mm, text(size: 22pt, weight: "bold", it.body))
      return
    }
    let n = counter(heading).get().first()
    block(width: 100%, above: 0pt, below: 10mm)[
      #v(14mm)
      #text(size: 11pt, weight: "semibold", fill: accent, tracking: 0.12em, upper(s.chapter + " " + str(n)))
      #v(1mm)
      #text(size: 26pt, weight: "bold", it.body)
      #v(1mm)
      #line(length: 20mm, stroke: 2pt + accent)
      #context {
        let d = chapter-desc.get()
        if d != "" {
          v(3mm)
          text(font: serif, size: 11.5pt, style: "italic", fill: muted, d)
        }
      }
    ]
  }
  show heading.where(level: 2): it => block(above: 7mm, below: 3.5mm, sticky: true)[
    #text(size: 14pt, weight: "bold")[#if it.numbering != none [#text(fill: accent, counter(heading).display()) #h(2mm)]#it.body]
  ]
  show heading.where(level: 3): it => block(above: 5mm, below: 2.5mm, sticky: true, text(size: 11.5pt, weight: "semibold", it.body))
  show heading.where(level: 4): it => block(above: 4mm, below: 2mm, sticky: true, text(size: 10.2pt, weight: "semibold", fill: ink, it.body))

  // Figures: numbered per chapter.
  set figure(numbering: n => context str(counter(heading).get().first()) + "." + str(n), supplement: s.figure, gap: 2.5mm)
  set figure.caption(separator: [. ])
  show figure.where(kind: image): set block(breakable: false, above: 5mm, below: 5mm)
  show figure.caption: set text(font: sans, size: 8.3pt, fill: muted)
  show figure.caption: set par(justify: false)
  show figure.where(kind: image): it => {
    set align(center)
    block(stroke: 0.4pt + luma(210), radius: 2pt, clip: true, it.body)
    v(2mm, weak: true)
    it.caption
  }
  show figure.where(kind: table): set figure(numbering: none)
  show figure.where(kind: table): set block(breakable: true)

  // Tables.
  set table(
    stroke: (x, y) => if y == 0 { (bottom: 0.8pt + navy) } else { (bottom: 0.3pt + luma(215)) },
    inset: (x: 5pt, y: 4.5pt),
  )
  show table: set text(size: 8.6pt)
  show table: set par(justify: false)
  show table.cell.where(y: 0): set text(font: sans, weight: "semibold", fill: navy)

  // Code.
  // Typst sets raw text at 0.8em already: 1.05em of that is about 0.84em of the body.
  show raw: set text(font: mono, size: 1.05em)
  show raw.where(block: true): it => block(width: 100%, fill: luma(246), inset: (x: 9pt, y: 8pt), radius: 3pt, stroke: 0.4pt + luma(225), text(size: 9.6pt, it))

  // Lists and links.
  set list(indent: 2mm, body-indent: 2.5mm, marker: text(fill: accent, sym.bullet))
  set enum(indent: 2mm, body-indent: 2.5mm, numbering: n => text(font: sans, weight: "semibold", fill: accent, str(n) + "."))
  show link: it => if type(it.dest) == str { text(fill: accent.darken(15%), it) } else { text(fill: accent.darken(25%), it) }
  show strong: set text(weight: "semibold")

  cover(lang, art, logo)
  title-pages(lang, logo)
  counter(page).update(1)
  set page(numbering: "1")
  contents()
  body
  back-cover(lang, logo)
}
