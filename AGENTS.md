# AGENTS.md

## ReScript

- UI lives in `.res` files. ReScript compiles them in place to `*.res.js` (gitignored). Never edit `.res.js`.
- Run `pnpm rs:dev` next to `pnpm dev`. Without it, `.res.js` imports are missing or stale.
- Each route `page.js` is a thin JS wrapper that re-exports `make` from the sibling `.res.js`. Next.js-only APIs (metadata, `generateStaticParams`) stay in `page.js`.
- `ShienBelt` is opened globally (`-open ShienBelt`). It provides `s` (`React.string`), `css` (loads a CSS module relative to the `.res` file) and `clsx`.

## Build

- Static export (`output: 'export'`). No server runtime, no API routes, no image optimization.
- No tests or linter. Verify with `pnpm build`, which compiles ReScript and then runs Next.js.
- Do not run `pnpm sync`. It commits everything as `*` and pushes to `main`.

## Content

- Writing: add `articles/<slug>.md(x)` at the repo root. Frontmatter needs `title`, `description` and `date` (`YYYY-MM-DD`). The build fails on missing fields or non-kebab-case slugs. Routes and sitemap entries are automatic.
- Snippets: add `src/app/studio/snippets/<name>/page.mdx`. Also list it by hand in `Snippets.res` and `src/app/sitemap.js`.

## Design

- Read `DESIGN.md` and `PRODUCT.md` before UI changes.
