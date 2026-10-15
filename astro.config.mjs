// The FontEasy guide: English at the root, Indonesian under /id/. Chapters and their order come
// from chapters.json, which the PDF build reads too.
import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';
import { unified } from '@astrojs/markdown-remark';
import chapters from './chapters.json' with { type: 'json' };
import remarkGuide from './src/plugins/remark-guide.mjs';
import rehypeFigure from './src/plugins/rehype-figure.mjs';
import fea from './src/plugins/fea.tmLanguage.json' with { type: 'json' };

const base = '/fonteasy';

export default defineConfig({
	site: 'https://s4rt4.github.io',
	base,
	trailingSlash: 'always',
	markdown: {
		processor: unified({ remarkPlugins: [[remarkGuide, { base }]], rehypePlugins: [rehypeFigure] }),
	},
	integrations: [
		starlight({
			title: { en: 'FontEasy Guide', id: 'Panduan FontEasy' },
			description: 'The complete guide to making fonts with FontEasy.',
			logo: { src: './src/assets/logo.svg' },
			favicon: '/favicon.svg',
			defaultLocale: 'root',
			locales: {
				root: { label: 'English', lang: 'en' },
				id: { label: 'Bahasa Indonesia', lang: 'id' },
			},
			social: [{ icon: 'github', label: 'GitHub', href: 'https://github.com/s4rt4/fonteasy' }],
			customCss: ['./src/styles/custom.css'],
			// OpenType feature code has no grammar in the bundle: a small one of our own.
			expressiveCode: { shiki: { langs: [fea] } },
			lastUpdated: false,
			pagination: true,
			tableOfContents: { minHeadingLevel: 2, maxHeadingLevel: 3 },
			sidebar: chapters.parts.map((p) => ({
				label: p.en,
				translations: { id: p.id },
				collapsed: false,
				items: p.chapters.map((c) => `${p.dir}/${c}`),
			})),
		}),
	],
});
