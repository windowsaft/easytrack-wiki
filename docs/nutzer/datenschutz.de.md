# Datenschutz

EasyTrack ist **lokal-first**: Alle deine Daten liegen ausschließlich auf deinem Gerät.
Es gibt **kein Konto, keine Anmeldung, kein Analytics und keinen Server**, der deine
Einträge speichert.

## Was gespeichert wird — und wo

Deine Tagebuch-, Wasser-, Aktivitäts-, Gewichts-, Ziel-, Rezept- und Profildaten liegen in
einer lokalen SQLite-Datenbank in der App. Sie verlässt das Gerät nur, wenn **du** eine
[Datensicherung](datensicherung.md) exportierst und selbst weitergibst.

## Wann eine Verbindung genutzt wird

EasyTrack funktioniert offline. Netzwerkzugriff passiert nur in klar abgegrenzten Fällen,
die du auslöst:

- **Online-Suche & Barcode** — findet die Offline-Suche nichts, kann Open Food Facts
  **online** abgefragt werden. Übertragen wird dabei nur der Suchbegriff bzw. der Barcode;
  das Ergebnis wird lokal zwischengespeichert.
- **Produktpaket laden** — das Herunterladen eines Open-Food-Facts-Produktpakets unter
  **Einstellungen → Produktdaten** ist ein bewusster Download.

Es werden **keine** persönlichen Tagebuchdaten übertragen.

## Sicherung von der Android-Sicherung ausgenommen

Das heruntergeladene OFF-Produktpaket (u. U. mehrere zehn MB) ist von der automatischen
Android-Cloud-Sicherung **ausgenommen**, um kein unnötiges Datenvolumen zu erzeugen. Deine
eigentliche Nutzerdatenbank sicherst du selbst über die [Datensicherung](datensicherung.md).

## Berechtigungen

- **Kamera** — nur für den [Barcode-Scanner](suche-barcode.md), optional und erst beim
  ersten Scan abgefragt.
- **Internet** — für die oben genannten, von dir ausgelösten Abfragen.

## Datenquellen und ihre Lizenzen

Die mitgelieferten Lebensmitteldaten sind separat lizenziert (nicht unter der GPL des
Quellcodes):

- **BLS 4.0** — [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.de).
- **Open Food Facts** — [ODbL 1.0](https://opendatacommons.org/licenses/odbl/1-0/).

Die Attributionen sind in der App unter **Profil → Über** hinterlegt.
