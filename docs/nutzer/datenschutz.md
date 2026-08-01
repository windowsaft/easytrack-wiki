# Privacy

EasyTrack is **local-first**: all your data lives solely on your device. There is **no
account, no sign-in, no analytics and no server** storing your entries.

## What is stored — and where

Your diary, water, activity, weight, goal, recipe and profile data live in a local SQLite
database in the app. It only leaves the device when **you** export a [backup](datensicherung.md)
and share it yourself.

## When a connection is used

EasyTrack works offline. Network access happens only in clearly bounded cases that you
trigger:

- **Online search & barcode** — if offline search finds nothing, Open Food Facts can be
  queried **online**. Only the search term or the barcode is transmitted; the result is
  cached locally.
- **Product-pack download** — downloading an Open Food Facts product pack under **Settings →
  Product data** is a deliberate download.

**No** personal diary data is transmitted.

## Excluded from Android backup

The downloaded OFF product pack (possibly tens of MB) is **excluded** from Android's
automatic cloud backup, to avoid needless data transfer. You back up your actual user
database yourself via the [backup](datensicherung.md).

## Permissions

- **Camera** — only for the [barcode scanner](suche-barcode.md), optional and requested on
  first scan.
- **Internet** — for the user-triggered queries above.

## Data sources and their licenses

The bundled food data is licensed separately (not under the source code's GPL):

- **BLS 4.0** — [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.de).
- **Open Food Facts** — [ODbL 1.0](https://opendatacommons.org/licenses/odbl/1-0/).

The attributions are in the app under **Profile → About**.
