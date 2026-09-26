# Product

<!-- impeccable:product-schema 1 -->

Compiled from the published site and repository on 2026-09-26, because the request was to proceed from that content. Sentences marked **inferred** were not confirmed in an interview.

## Platform

web

## Users

Marcos Oliveira is the author. The site is his public record.

**Inferred.** The primary visitor opens marcos.id to learn who he is, what he has shipped, and where to read or reach him: someone hiring, someone collaborating, or a developer following his ReScript and tooling work.

## Product Purpose

marcos.id is Marcos Oliveira's personal site, a place to share projects and thoughts. As built, a visit works when someone can read who he is, scan the work, open a snippet, and find talks and writing that feature him.

## Positioning

The published position is a UI engineer in Brazil who builds products and developer tools with JavaScript, ReScript, React, and functional programming. He works at VTEX on the Checkout platform and sells BetterVim, a productized Neovim config. This is a personal site. It does not claim a mechanism a neighboring product would be unable to copy.

## Operating Context

The site is read in a browser at https://marcos.id. Four routes exist in the app: About (`/`), Projects (`/projects`), Snippets (`/studio/snippets`, plus MDX articles), and Featured (`/featured`).

Contact leaves the page: email at marcosoliveira@duck.com, shown as marcosoliveira[at]duck.com, plus X (https://x.com/vmaarcosp) and GitHub (https://github.com/vmarcosp). Project, talk, and work links also leave the site.

## Capabilities and Constraints

- Personal site on Next.js 16 (App Router), ReScript, MDX, and CSS modules. Dev command is `pnpm dev`.
- Copy is English.
- No accounts, payments, or CMS are in the repo.
- Snippets are short technical notes. The index names TypeScript, ReScript, React, Shell, TMUX, Neovim, and Lua; the two articles in the repo are shell functions.
- **Undecided.** Whether any surface beyond about, projects, snippets, and featured should exist.

## Brand Commitments

- Name: Marcos Oliveira. Site name and domain: marcos.id.
- Logo: `src/components/Header/logo.webp`, shown at 32px, alt text "Marcos Oliveira's Logo".
- Voice, from the published copy: first person, plain, specific, and a little dry. Page titles are short and punctuated ("Build. Ship.", "Featured.", "Snippets."). The footer says "Made with ReScript".

## Evidence on Hand

- About: `src/app/home/Home.res`
- Projects: `src/app/projects/Projects.res` (yugen.nvim, BetterTmux, FastCheckout, BetterVim, ES2077, Ancestor, ReForm, ReSchema)
- Featured talks, a podcast, and an article: `src/app/featured/Featured.res`
- Snippets: `src/app/studio/snippets/`
- Share image: `public/og.jpg`
- Do not invent clients, metrics, testimonials, or quotes. VTEX and the listed projects are the only affiliations in the repo.

## Product Principles

Derived from the site as published:

- The person and the work are the content. The site records them.
- Keep published facts intact. Do not add employers, numbers, or praise that are not already written.
- Stay inside the four surfaces unless a new one is asked for: about, projects, snippets, featured.
- Write in the author's English voice: direct, first person, short titles.
- A visit is for reading and leaving to the work. Scanning a list and opening a link is the job.
