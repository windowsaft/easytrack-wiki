# EasyTrack Wiki

User manual and developer documentation for [EasyTrack](https://github.com/windowsaft/easytrack),
built with [MkDocs](https://www.mkdocs.org/) and the
[Material theme](https://squidfunk.github.io/mkdocs-material/).

## Languages

The wiki is bilingual via [`mkdocs-static-i18n`](https://ultrabug.github.io/mkdocs-static-i18n/)
(suffix mode):

- **English is the default**, served at `/`. Pages are the unsuffixed `*.md` files.
- **German** is served at `/de/`. Pages are the `*.de.md` files.
- A language switcher sits in the header; a missing translation falls back to English.

## View locally

```bash
pip install -r requirements.txt
mkdocs serve
```

Then open `http://127.0.0.1:8000/`. Changes under `docs/` rebuild live.

## Layout

- `docs/nutzer/` — user guide (installation, usage, privacy).
- `docs/entwickler/` — architecture, data model, ETL, build & release, contributing.
- `docs/assets/screens/` — app screenshots; `docs/assets/extra.css` — brand palette.
- `mkdocs.yml` — navigation, theme, Markdown extensions, i18n config.

## Deployment

A push to `main` builds a Docker image (`.github/workflows/container.yml`): MkDocs compiles
the site (`mkdocs build --strict`) and nginx serves it. The image is pushed to the GitHub
Container Registry as `ghcr.io/windowsaft/easytrack-wiki:latest` (also tagged with the commit
SHA).


## License

Documentation under GPL-3.0, like the app.
