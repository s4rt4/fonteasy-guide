// Guide conventions, shared with the PDF build (guide/pdf/guide.lua):
// - `![Caption](screen:g-edit)` is the screenshot in the page's language
//   (src/assets/screens/<lang>/g-edit.png); `![Caption](diagram:baseline)` the diagram
//   (src/assets/diagrams/<lang>/baseline.svg).
// - Links to `/part/chapter/#anchor` point into the same language and get the site's base.
import path from 'node:path';

const assets = path.resolve('src/assets');

function walk(node, fn) {
	fn(node);
	for (const child of node.children ?? []) walk(child, fn);
}

export default function remarkGuide({ base = '' } = {}) {
	return (tree, file) => {
		const fp = (file.path ?? file.history?.[0] ?? '').replace(/\\/g, '/');
		const rel = fp.split('/src/content/docs/')[1] ?? '';
		const lang = rel.startsWith('id/') ? 'id' : 'en';
		const toAsset = (sub) => {
			let r = path.relative(path.dirname(fp), path.join(assets, sub)).replace(/\\/g, '/');
			return r.startsWith('.') ? r : `./${r}`;
		};
		walk(tree, (n) => {
			if (n.type === 'image' && typeof n.url === 'string') {
				const m = n.url.match(/^(screen|diagram):(.+)$/);
				if (m) n.url = m[1] === 'screen' ? toAsset(`screens/${lang}/${m[2].toLowerCase()}.png`) : toAsset(`diagrams/${lang}/${m[2]}.svg`);
			}
			if (n.type === 'link' && typeof n.url === 'string' && n.url.startsWith('/') && !n.url.startsWith('//') && !n.url.startsWith(base + '/')) {
				n.url = base + (lang === 'id' ? '/id' : '') + n.url;
			}
		});
	};
}
