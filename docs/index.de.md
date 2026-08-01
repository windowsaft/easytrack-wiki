# EasyTrack

**EasyTrack** ist ein persönlicher, lokal-first Kalorien- und Wassertracker für Android —
mit offliner deutscher Lebensmitteldatenbank, Barcode-Scanner, Rezepten und ohne Konto,
ohne Abo, ohne Cloud.

Alle Daten bleiben auf dem Gerät. Es gibt keine Anmeldung, kein Tracking und keinen Server,
der mitliest.

!!! note "Auf Deutsch und Englisch"
    EasyTrack spricht beide Sprachen. Standardmäßig folgt die App der Sprache deines
    Telefons; unter **Einstellungen → Sprache** kannst du sie auch fest einstellen. Dieses
    Handbuch verwendet die deutschen Beschriftungen der App.

<div class="screens" markdown>
<figure markdown="span">
  ![Tagebuch](assets/screens/home.png)
  <figcaption>Tagebuch — Kalorienring & Makros</figcaption>
</figure>
<figure markdown="span">
  ![Suche](assets/screens/search.png)
  <figcaption>Offline-Suche & Barcode</figcaption>
</figure>
<figure markdown="span">
  ![Verlauf](assets/screens/history.png)
  <figcaption>Verlauf & Gewichtstrend</figcaption>
</figure>
</div>

<div class="grid cards" markdown>

- :material-cellphone-arrow-down: **[Installation](nutzer/installation.md)**
  APK laden, Sideload einrichten, aktualisieren.

- :material-flag-checkered: **[Erste Schritte](nutzer/erste-schritte.md)**
  Onboarding, Körperdaten, Tagesziel.

- :material-book-open-variant: **[Tagebuch & Wasser](nutzer/tagebuch.md)**
  Mahlzeiten, Makros, Wasser und Aktivität.

- :material-barcode-scan: **[Suche & Barcode](nutzer/suche-barcode.md)**
  Offline-Suche, Barcode-Scan, eigene Lebensmittel.

- :material-chart-line: **[Ziele & TDEE](nutzer/ziele.md)**
  Mifflin-St-Jeor-Berechnung, immer manuell überschreibbar.

- :material-database-lock: **[Datenschutz](nutzer/datenschutz.md)**
  Was gespeichert wird — und was nicht.

</div>

## Für Entwickler:innen

Der Quellcode steht unter der **GPL-3.0** auf
[github.com/windowsaft/easytrack](https://github.com/windowsaft/easytrack). Der Einstieg
in Aufbau, Datenmodell und Build findet sich im **[Entwickler-Bereich](entwickler/architektur.md)**.

## Datenquellen

- **Bundeslebensmittelschlüssel (BLS) 4.0** — generische deutsche Lebensmittel,
  lizenziert unter [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.de).
- **[Open Food Facts](https://openfoodfacts.org)** — Marken- und Barcode-Produkte,
  unter der [ODbL 1.0](https://opendatacommons.org/licenses/odbl/1-0/).

Die Lebensmitteldaten fallen **nicht** unter die GPL, sondern behalten ihre eigenen
Lizenzen. Details unter [Datenschutz](nutzer/datenschutz.md) und [Mitwirken](entwickler/beitragen.md).
