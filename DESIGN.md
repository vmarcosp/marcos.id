---
name: Marcos Oliveira
description: Personal site of Marcos Oliveira, UI engineer.
colors:
  ink: "#151515"
  graphite: "#5a5a5a"
  ash: "#707070"
  hairline: "#e2e2e2"
  paper: "#f8f8f8"
  paper-bright: "#fafafa"
  code-well: "#eeeeee"
typography:
  display:
    fontFamily: "Recoleta, Georgia, serif"
    fontSize: "3.2rem"
    fontWeight: 700
    lineHeight: 1.5
    letterSpacing: "normal"
  headline:
    fontFamily: "Recoleta, Georgia, serif"
    fontSize: "2.4rem"
    fontWeight: 700
    lineHeight: 1.5
    letterSpacing: "normal"
  title:
    fontFamily: "Recoleta, Georgia, serif"
    fontSize: "1.8rem"
    fontWeight: 600
    lineHeight: 1.5
    letterSpacing: "normal"
  body:
    fontFamily: "DM Sans, sans-serif"
    fontSize: "1.6rem"
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: "normal"
  label:
    fontFamily: "Recoleta, Georgia, serif"
    fontSize: "1.4rem"
    fontWeight: 600
    lineHeight: 1.5
    letterSpacing: "normal"
rounded:
  xs: "2px"
  sm: "4px"
  md: "6px"
spacing:
  "1": "4px"
  "2": "8px"
  "3": "12px"
  "4": "16px"
  "6": "24px"
  "8": "32px"
  "12": "48px"
  "14": "56px"
  "18": "72px"
components:
  text-link:
    textColor: "{colors.graphite}"
    rounded: "{rounded.md}"
  text-link-hover:
    textColor: "{colors.ink}"
  nav-link:
    textColor: "{colors.graphite}"
    typography: "{typography.title}"
    rounded: "{rounded.md}"
    padding: "8px"
  nav-link-active:
    textColor: "{colors.ink}"
  chip:
    backgroundColor: "{colors.ink}"
    textColor: "{colors.paper-bright}"
    typography: "{typography.label}"
    rounded: "{rounded.xs}"
    padding: "4px"
  list-row:
    padding: "12px 0"
  code-block:
    backgroundColor: "{colors.code-well}"
    textColor: "{colors.ink}"
    rounded: "{rounded.md}"
    padding: "16px"
  inline-code:
    backgroundColor: "{colors.hairline}"
    textColor: "{colors.ink}"
    rounded: "{rounded.sm}"
    padding: "4px"
---

# Design System: Marcos Oliveira

## Overview

**Creative North Star: "The Quiet Index"**

The name is read off the site that is already shipping: a narrow paper column, serif names, and lists separated by hairlines. This file records that system.

The page is one column, 824px at most, on a near-white paper ground. Recoleta carries the name, the navigation, and every title. DM Sans carries the explanation. Ink sits just off pure black, and there is no second hue. Density is a typeset index: a short title, a lede, then rows.

Nothing lifts. Rules are 1px hairlines. Motion is an arrival, a fade and a short rise when the page loads, and it is removed when the visitor prefers reduced motion. After that the page is still, except a nav tick and a row that shifts 6px on hover from 768px up.

**Key Characteristics:**

- Monochrome paper and ink
- Recoleta for names, DM Sans for prose
- An 824px column
- Hairline lists and no shadows
- One arrival animation, then stillness

## Colors

The palette is a neutral gray ramp. Ink is the only color that acts.

### Primary

- **Soft Ink** (`{colors.ink}`): the name, active navigation, emphasized words in the about text, headings, and the fill of a category chip.

### Neutral

- **Graphite** (`{colors.graphite}`): secondary text, default links, footer copy, inactive navigation, and the role label on a row.
- **Ash** (`{colors.ash}`): the long about paragraphs. It is the quietest body color.
- **Hairline** (`{colors.hairline}`): 1px rules between rows and under the footer, and the ground of inline code.
- **Paper** (`{colors.paper}`): the page background.
- **Bright Paper** (`{colors.paper-bright}`): the label text on an ink chip.
- **Code Well** (`{colors.code-well}`): the ground of a fenced code block. It is a one-off value in the markdown styles, not a `--color-*` token.

**The One Ink Rule.** Soft Ink is the only strong color. It marks the name, the active item, a stressed word, and the chip. A second hue is not part of this system.

## Typography

**Display font:** Recoleta (Georgia, then serif). Self-hosted at regular, medium, semibold, and bold.
**Body font:** DM Sans (sans-serif), weights 400 and 700, from the Google font loader.
**Label font:** Recoleta, the same face as display. There is no monospace stack; code inherits the surrounding face.

**Character:** Recoleta is the voice of the name. DM Sans is the voice of the explanation. The pairing stays quiet because the sizes are close and the color does the separating.

The root is the scale. `html` is set to 10px, so 1rem is 10px. A body size of 1.6rem is 16px.

### Hierarchy

- **Display** (700, 3.2rem, line-height 1.5): the name on the about page. Weight comes from the heading, not from a class.
- **Headline** (700, 2.4rem, line-height 1.5): the page title on projects, featured, and snippets ("Build. Ship.", "Featured.", "Snippets."). An article h1 steps up to 2.8rem with a 3.2rem line-height.
- **Title** (600, 1.8rem, line-height 1.5): the name of a project, talk, or snippet inside a row. Navigation uses the same 1.8rem size in Recoleta at weight 400.
- **Body** (400, 1.6rem, line-height 1.5): explanations under titles, row descriptions, and markdown paragraphs, in DM Sans and graphite or ash. About paragraphs on viewports 768px and wider step up to 1.8rem, with a 28px line-height and -0.1px tracking. Emphasized words inside those paragraphs switch to ink at weight 500.
- **Label** (600, 1.4rem): the category chip. The role on a row ("Creator", "Talk") is Recoleta at 1.6rem, weight 500, in graphite.

**The Ten-Pixel Root Rule.** `html` font-size stays 10px. Rem tokens in this file assume that root. Changing it rescales the whole site.

**The Serif for Names Rule.** Recoleta carries identity: the name, navigation, titles, roles, and chips. DM Sans carries explanation. Do not swap them.

## Layout

The page is a centered column. Header, main, and footer share a max width of 824px. Main is padded 32px on the left and right. Below 768px, a page is a stack: title, lede, then the list. From 768px up, projects, featured, and snippets become an 8-column grid with a 32px gap. The title block occupies columns 1–3. The list occupies columns 4–8.

Vertical rhythm uses a 4px step. The about block starts 56px below the header (72px from 1024px). Index pages start at the same 56px, and 72px from 768px. The footer sits 48px below the content and closes with a hairline.

The header is a column under 470px and a row from there up, with the logo at 32px and the menu on the same line.

**The Paper Column Rule.** Readable content stays in the 824px column. Do not open a second content column or a full-bleed band.

## Elevation & Depth

The system is flat. There is no box-shadow. A surface is paper. Separation is a 1px hairline, a change in type color, or the 2px tick under a nav item. A row may shift 6px to the right on hover from 768px up. That shift is motion, not elevation.

**The Flat Paper Rule.** Surfaces do not cast shadows. If a new element needs to separate, use a hairline or type, not a shadow.

**The Arrival Rule.** Each region fades and rises once on load (fade 900ms, slide 600ms, delay 10ms). `prefers-reduced-motion: reduce` removes that entrance. Nothing else animates in.

## Shapes

Corners are small. Controls and links use 6px. Inline code uses 4px. The category chip uses 2px. The nav tick is a 16×2px mark with an 8px radius, so it reads as a short stroke, not a pill around the word. List rows are square; the hairline is the only edge.

## Components

### Navigation

Serif, 1.8rem, weight 400, graphite at rest and ink when the route matches. Padding is 8px from 768px up. A 16×2px tick sits under the label, scaled to 0 until hover or the active route, then scaled to 1 over 200ms. Focus shows the ink outline. Pressed state washes the background with paper for 100ms.

### Links

The text link is Recoleta, graphite, with a dotted underline in the same color, offset 4px. Hover and the underline turn to ink over 200ms. Focus uses the ink outline, offset 4px. In markdown, links inside prose are ink with the same dotted graphite underline.

### Cards / Containers

There is no elevated card. A row is the unit: 12px vertical padding, 8px between the title line and the description, and a hairline under every row except the last. From 768px the row also gains 12px of horizontal padding and shifts 6px right on hover over 200ms. The title is Recoleta 1.8rem semibold in ink. The role sits on the same line in Recoleta 1.6rem medium, graphite. The description is DM Sans 1.6rem graphite.

### Chips

Used for a snippet's category. Ink fill, bright-paper text, Recoleta 1.4rem semibold, 4px padding, 2px radius. It is a label, not a button.

### Code

A fenced block sits on Code Well, in ink, at 1.5rem, with 16px padding and a 6px radius. Inline code sits on Hairline, in ink, at 1.4rem weight 500, with 4px padding and a 4px radius.

## Do's and Don'ts

### Do:

- **Do** keep the page on Paper, write primary text in Soft Ink, and write secondary text in Graphite.
- **Do** set names, navigation, and titles in Recoleta, and explanations in DM Sans.
- **Do** keep the column at 824px and separate rows with a 1px Hairline.
- **Do** honor `prefers-reduced-motion`. The load fade and slide are the only entrance.

### Don't:

- **Don't** introduce a chromatic accent, a gradient, or a shadow.
- **Don't** add a second display face. Recoleta is the only serif.
- **Don't** treat 1rem as 16px. The root is 10px, so 1.6rem is 16px.
- **Don't** wrap a list row in an elevated card. The row is the surface, and the hairline is the edge.
- **Don't** add motion after arrival, beyond the nav tick and the 6px row shift from 768px up.
