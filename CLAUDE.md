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

## Git

- Never commit preview files, .DS_Store, or original inbox photos
- GitHub token is in macOS Keychain only — never write it to any file
- Push via `bash publish.sh` from the Oaxaca Gravel folder

## Design

- Background: #f7f4ee / Text: #1c1a17 / Accent: #b85c2a / Muted: #8a7f6e / Border: #d9d4c9
- Fonts: Lora (body, italic), Playfair Display 700 (headings), Inter 400/500 (meta/UI)
- All images: aspect-ratio: 16/9; object-fit: cover
