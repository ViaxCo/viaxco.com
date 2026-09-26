---
name: viaxco.com
description: A quiet dark index of a working engineer, told in gray labels and plain text links.
colors:
  near-black: "#0a0a0a"
  near-white: "#ededed"
  quiet-gray: "#a3a3a3"
  hairline: "#2a2a2a"
typography:
  display:
    fontFamily: "Albert Sans Variable, ui-sans-serif, system-ui, sans-serif"
    fontSize: "17.5px"
    fontWeight: 400
    lineHeight: 1.3
    letterSpacing: "-0.01em"
  headline:
    fontFamily: "Albert Sans Variable, ui-sans-serif, system-ui, sans-serif"
    fontSize: "18.5px"
    fontWeight: 500
    lineHeight: 1.375
    letterSpacing: "-0.01em"
  subtitle:
    fontFamily: "Albert Sans Variable, ui-sans-serif, system-ui, sans-serif"
    fontSize: "16.5px"
    fontWeight: 400
    lineHeight: 1.375
    letterSpacing: "-0.01em"
  body:
    fontFamily: "Albert Sans Variable, ui-sans-serif, system-ui, sans-serif"
    fontSize: "13.5px"
    fontWeight: 400
    lineHeight: 1.3
    letterSpacing: "-0.01em"
  detail:
    fontFamily: "Albert Sans Variable, ui-sans-serif, system-ui, sans-serif"
    fontSize: "14px"
    fontWeight: 400
    lineHeight: 1.6
    letterSpacing: "-0.01em"
  display-desktop:
    fontFamily: "Albert Sans Variable, ui-sans-serif, system-ui, sans-serif"
    fontSize: "20px"
    fontWeight: 400
    lineHeight: 1.3
    letterSpacing: "-0.01em"
  headline-desktop:
    fontFamily: "Albert Sans Variable, ui-sans-serif, system-ui, sans-serif"
    fontSize: "19.5px"
    fontWeight: 500
    lineHeight: 1.375
    letterSpacing: "-0.01em"
  figure:
    fontFamily: "Albert Sans Variable, ui-sans-serif, system-ui, sans-serif"
    fontSize: "12px"
    fontWeight: 400
    lineHeight: 1.2
    letterSpacing: "-0.01em"
rounded:
  focus: "2px"
  full: "9999px"
spacing:
  xs: "4px"
  sm: "8px"
  md: "12px"
  lg: "20px"
  xl: "24px"
components:
  link:
    textColor: "{colors.near-white}"
    typography: "{typography.body}"
  row-label:
    textColor: "{colors.quiet-gray}"
    typography: "{typography.body}"
  avatar:
    rounded: "{rounded.full}"
    width: "80px"
    height: "80px"
---

# Design System: viaxco.com

## Overview

**Creative North Star: "The Quiet Ledger"**

This is one page, read like a short, well-kept record: a name, one sentence, then rows of plain fact. Nothing on the page asks for attention on its own. A visitor's eye moves down a narrow column of gray labels (Now, Built, Projects, Elsewhere) into wider columns of near-white text, and the only color in the whole system is the gap between "bright" and "dim." There is no accent hue, no card, no shadow, no icon set beyond a hairline arrow and a plus sign. The one flourish the page allows itself is a small hand-drawn line figure that appears when a "Built" row opens, sketching the fact just told (three sites from one codebase, one library feeding two apps, a chart of the move to TypeScript).

The page is dark by product commitment, not by mood: it is dark because that is the only theme this site has. Within that constraint the register is restrained and factual, closer to a well-set terminal or a lab notebook than a marketing page. It rejects the hero-plus-cards portfolio shape on purpose: no boxed project tiles, no big display headline, no testimonial strip.

**Key Characteristics:**

- One page, one column, no boxes.
- Three text colors and nothing else: near-white for what matters, gray for what supports it, and the near-black ground.
- Structure comes from a fixed label column and vertical space, never from a border or a shadow.
- The only shape besides straight lines is a circle (the photo, and the dots in each figure).
- Motion has two speeds: a quick 200ms nudge for hover, and a slow, confident reveal (500-900ms) for anything that opens or draws itself in.

## Colors

The palette is four values, no more: a near-black ground, a near-white for text that matters, a mid-gray for text that supports it, and a hairline gray reserved for the thinnest dividing marks. No hue appears anywhere on the page.

### Primary

- **Near Black** (`#0a0a0a`): the page background (`html`) and the base of the whole system. Close to true black and fully neutral, with no colour tint. Never a pure `#000`, which smears on OLED screens during scrolling.

### Neutral

- **Near-White** (`#ededed`): the default text color, used for the name, the intro sentence, row content, and link text.
- **Quiet Gray** (`#a3a3a3`): every label (Now, Built, Projects...), every secondary line (dates, details, "· 2024"), and the stroke color of small icons (arrow, plus/×). This is the system's supporting voice.
- **Hairline** (`#2a2a2a`): the quietest mark in the system. Used only for the underline under an inline "read more" link inside an open entry, and for the thin construction lines inside the small line figures (axis and connector strokes, when a figure needs one).

### Named Rules

**The No-Accent Rule.** There is no primary or secondary accent color. Every visual distinction on the page is a value shift between these four grays, never a hue. If a new element seems to need color to stand out, that is a sign it should compete on size, weight, or position instead.

**The Selection-Is-Inverted Rule.** Text selection (`::selection`) swaps the two ends of the palette: near-white background, near-black text. It is the one moment the system runs its contrast in reverse, and it is confirmed, exact, and load-bearing (not a browser default left in place).

## Typography

**Body Font:** Albert Sans Variable (with `ui-sans-serif, system-ui, sans-serif` fallback). One family for every piece of text on the page: name, labels, body, figure captions.

**Character:** A single, small, slightly tight sans-serif voice. Nothing on the page is set larger than about 20px; hierarchy comes from weight (medium vs. regular), color (near-white vs. gray), and position, not from a jump in size. Numbers are set with tabular figures (`font-feature-settings: "tnum"`) site-wide, so dates and version numbers line up.

### Hierarchy

- **Display** (400, 17.5px → 20px at ≥640px, line-height 1.3): the intro sentence under the name. This is the largest text on the page and the only text that reads as a headline, even though it is set in body weight.
- **Headline** (500, 18.5px → 19.5px at ≥640px, line-height 1.375): the name, "Victor Ajibade," top left. Medium weight is the only place the page uses a weight above 400.
- **Subtitle** (400, 16.5px → 17px at ≥640px, line-height 1.375, gray): the role line under the name, "Software engineer."
- **Body** (400, 13.5px → 14.5px at ≥640px, line-height 1.3): the working size for row labels, entry titles, project names, and inline detail text. This is what most of the page is set in.
- **Detail** (400, 14px, line-height 1.6, gray): the longer story paragraphs inside an opened "Built" or "Contract" entry, and the "About" paragraph. A looser line-height for reading in short bursts.

A single letter-spacing value, `-0.01em`, is applied once at the page's main container and inherited everywhere; no role overrides it.

### Named Rules

**The One-Family Rule.** Every character on the page, from the name to a figure's axis label, is Albert Sans. There is no serif, no mono, no second family for numbers or code.

## Layout

The page is a single column, centered, capped at `42rem` (672px), with responsive edge padding: 24px below 480px, 39px from 480px up. Top padding is 36px on small screens and grows to 80px at 640px and above; bottom padding is a fixed 96px.

Below the header and intro, content is a stack of label rows. Each row is a two-column grid: a fixed label column (`Now`, `Built`, `Projects`...) and a fluid content column. The label column widens in three steps as the viewport grows: 5.5rem (88px) under 480px, 6.5rem (104px) from 480px, 8rem (128px) from 640px. This is the entire layout system: one grid template, reused for every row, with no per-row exceptions except the one noted below for opened entries on small screens.

Vertical rhythm is close and consistent: 20px between row sections, 12px between entries inside a row that lists several (Built, Contract, Projects, Clients), 10px between story paragraphs inside an opened entry, 4px between a link line and its supporting detail line, 24px above a figure. The header photo and name sit in a single row with 24px of gap between them.

**Exception:** on screens under 480px, an opened entry's story panel bleeds left by the width of the label column, so the reading measure isn't squeezed by a label that no longer needs to compete for space once the row is open.

### Named Rules

**The One-Grid Rule.** Every row on the page uses the same two-column label grid. A new section should reuse it rather than invent a different column split.

## Elevation & Depth

Flat. There are no shadows anywhere in the system, and there is no layered "surface" or "container" color either; the page is one ground color throughout. Depth and focus are conveyed only by text color contrast (near-white reads as "in front", gray reads as "behind") and by the plus/× icon and underline state on an entry, never by a raised or sunken surface.

### Named Rules

**The Flat-By-Default Rule.** Nothing lifts off the page. If a new component seems to need a shadow to separate it from its surroundings, add space or a label instead.

## Shapes

The system draws almost nothing but straight lines. The single curved form is the circle: the 80px round photo, and the small dots that mark points in a line figure. Everything else, text blocks, the underline under a link, the icons, is rectilinear or a straight stroke. The one other radius in the system is a 2px corner on the keyboard focus outline, present only so the outline doesn't read as a hard rectangle around soft text.

There are no borders, no card edges, and no divider lines between rows. The hairline gray color exists, but it is used for strokes inside figures and for one underline, never as a rule between sections.

### Named Rules

**The Circle-Only Rule.** The photo and the dots inside a line figure are the only curves on the page. A new element that wants a rounded corner should default to sharp instead, unless it is genuinely circular.

## Components

### Links (plain-text)

- **Style:** no button chrome at all. A link is near-white text with a transparent underline at rest.
- **Hover / Focus:** the underline fades in to gray (`decoration-mute`) over 200ms. Links that point off-site (Projects, Clients) carry a small diagonal arrow (12px viewBox, 1.2px stroke, gray) after the label; on hover the arrow nudges up and right by 1px over 200ms with an ease-out curve, while the underline fades in at the same time.
- **Focus ring:** every focusable element gets a 1px solid near-white outline, offset 3px, with a 2px corner radius. This is the only visible focus treatment in the system; there is no separate glow or background change.

### Disclosure entries ("Built" / "Contract" rows)

- **Trigger:** a native `<details>/<summary>`, so it needs no script and works with the browser's own accessibility tree. The visible trigger is the entry title, its detail line, and its year, all in body/gray, with a small plus icon (10px, gray, 1.2px stroke) after the title.
- **Open state:** the plus icon rotates 45° into an ×, and the title's underline turns gray and stays gray for as long as the entry is open (the open state keeps its own affordance visible, it does not just revert to the hover style).
- **Reveal motion:** the panel's height animates open and closed over 500ms with the system's slow-reveal easing (`cubic-bezier(0.16, 1, 0.3, 1)`), using `::details-content` transitions rather than a plain hide/show. This is the slowest, most deliberate motion in the system, reserved for content actually arriving.
- **Signature component, the line figure:** inside an opened "Built" entry, a small inline SVG (roughly 280px wide, viewBox-scaled) sketches the fact just told, one codebase branching to three domains, a version timeline, a token passed between two sites. Every figure shares one visual vocabulary: a near-white stroke (`.draw`, 1.2px, round caps and joins) for the main line, gray dots for points, gray text (`.mute`) for secondary labels inline in a caption, and hairline gray (`.grid`) for any reference line. When an entry opens, `.draw` strokes animate in over 900ms with the same slow easing as the panel reveal, so the line looks hand-drawn rather than pasted in (this motion is skipped under `prefers-reduced-motion`). A figure never uses a fill, a color outside the four-value palette, or a shape besides a line and a dot.

### Navigation / header

- There is no nav bar. The header is the name, role, and photo, in a row, with no separate navigation component; the page has one destination (itself), read top to bottom.

## Do's and Don'ts

### Do:

- **Do** keep every new visual difference to a shift in the four established values (near-black, near-white, quiet-gray, hairline), never a new hue.
- **Do** reuse the one two-column label grid for any new row; don't invent a second layout pattern for a new section.
- **Do** keep hover feedback fast (200ms) and reveal/open motion slow (500-900ms, `cubic-bezier(0.16, 1, 0.3, 1)`); don't blend the two speeds.
- **Do** set every new figure in the same line-dot-text vocabulary (`.draw`, `.mute`, `.grid`) and label only the points that matter, with always-visible text so a new figure reads as part of the same family as the other figures.

### Don't:

- **Don't** add a card, a box, a border, a divider line, or a drop shadow. Structure comes from the label column and space only.
- **Don't** introduce a second font family, a display-size headline, or a weight above 500.
- **Don't** add an accent color, a gradient, or a themed/costume visual world. The brief calls for the category-standard engineer portfolio played straight, not a themed variant.
- **Don't** add a light theme or a theme toggle; this system is dark-only by product commitment.
- **Don't** round a corner just for softness. Sharp is the default; circular is reserved for things that are actually round (the photo, a point in a figure).
