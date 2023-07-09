---
title: "mobile-first.css"
excerpt: "A tiny stylesheet to help you keep mobile in mind."
teaser: /images/mobile-first-wide.png
---

mobile-first.css is a tiny stylesheet to help you keep mobile in mind while building on desktop.

## Why?
You just finished building something and it looks great on your computer. Then you pull it up on your phone and... not so great. It's easy to lose sight of mobile when you're building on a desktop screen. This stylesheet wants to help.

## Usage
Paste this tag in the <head> element of the page:

```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/pooriar/mobile-first/mobile-first.min.css">
```

That's it!

## What does it do exactly?
- Gives the body element fixed dimensions with a 16:9 aspect ratio (like most phones).
- Forces the body element to only scroll vertically.
- All styles disappear at mobile viewport widths so it doesn't interfere with the real thing.
- Adds a phone-in-hand visual to really drive it home.
- Only applies the minimum necessary styles to the <HTML> and <body> tags.

## Options
Hide the hand outline by adding a "no-hand" class to the <HTML> tag.
