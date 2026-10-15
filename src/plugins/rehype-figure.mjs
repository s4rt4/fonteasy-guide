// An image alone in its paragraph becomes a figure, its alt text the caption (as in the PDF).
function isBlank(n) {
	return n.type === 'text' && !n.value.trim();
}

function walk(node) {
	for (const [i, child] of (node.children ?? []).entries()) {
		if (child.type === 'element' && child.tagName === 'p') {
			const kids = child.children.filter((k) => !isBlank(k));
			const img = kids[0];
			if (kids.length === 1 && img.type === 'element' && img.tagName === 'img' && img.properties?.alt) {
				node.children[i] = {
					type: 'element',
					tagName: 'figure',
					properties: { className: ['guide-figure'] },
					children: [img, { type: 'element', tagName: 'figcaption', properties: {}, children: [{ type: 'text', value: String(img.properties.alt) }] }],
				};
				continue;
			}
		}
		walk(child);
	}
}

export default function rehypeFigure() {
	return (tree) => walk(tree);
}
