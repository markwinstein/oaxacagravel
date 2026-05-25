# Oaxaca Gravel — project instructions

## General

- Never proceed without owner's approval

## Workflow: code first, then artifact

Always write changes to the actual files on disk first (index.html, style.css, about.html, post pages, etc.), then update the artifact from those files. Never build the artifact from hand-coded content that isn't already saved to disk.

## Files

- `index.html` — home page
- `style.css` — all styles
- `about.html` — about page
- `posts/` — one folder per ride, each containing `index.html` and `cover.jpg`
- `publish.sh` — git add, commit, push to GitHub Pages

## Artifact

- Artifact id: `oaxaca-gravel-site`
- Preview HTML lives in the sandbox outputs folder only — never commit it or save it to this folder
- After every code change, update the artifact so Mark can review before pushing to git
- After pushing to the artifact, do not write a summary — stop there

## Inbox workflow

- Incoming photos and drafts land in `/Users/markwinstein/Documents/fundidora/oaxacagravel/inbox/`
- That folder is outside git tracking — never commit anything from it
- Compress photos with ImageMagick: quality 82, max 1400px wide, output as `cover.jpg`

## Post structure

Every post follows this exact order:
1. Back link (`← All rides`)
2. Entry header: meta (date · km) then `<h1>`
3. First paragraph as `<p class="entry-lede">` — italic, no drop cap
4. Featured image `<img class="photo-full">`
5. Remaining paragraphs inside `<div class="entry-text">` — normal (non-italic), drop cap on first paragraph only

All paths in post files must be root-relative (e.g. `/style.css`, `/about.html`, `/`) — never relative (`../`).

## Git

- Never commit preview files, .DS_Store, or original inbox photos
- GitHub token is in macOS Keychain only — never write it to any file
- Push via `bash publish.sh` from the Oaxaca Gravel folder

## Design

- Background: #f7f4ee / Text: #1c1a17 / Accent: #b85c2a / Muted: #8a7f6e / Border: #d9d4c9
- Fonts: Georgia (body, headings, drop cap), system-ui/sans-serif (meta/UI — nav, dates, footer)
- All images: aspect-ratio: 16/9; object-fit: cover
