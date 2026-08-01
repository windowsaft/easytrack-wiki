# Installation

EasyTrack wird als **APK per Sideload** installiert — es gibt (noch) keinen Play-Store-Eintrag.
Die App ist reines Android.

## APK herunterladen

1. Zur **[Releases-Seite](https://github.com/windowsaft/easytrack/releases)** gehen.
2. Beim neuesten Release unter **Assets** die Datei `easytrack-x.y.z.apk` laden.

## Installation erlauben

Android blockiert Installationen aus unbekannten Quellen standardmäßig.

1. Die geladene APK öffnen (z. B. über die Benachrichtigung oder die Dateien-App).
2. Android fragt nach der Erlaubnis, aus dieser Quelle zu installieren →
   **Einstellungen → „Aus dieser Quelle installieren" erlauben**.
3. Zurück und **Installieren** antippen.

!!! note "Play Protect"
    Google Play Protect kann bei sideloadeten Apps eine Warnung zeigen, weil die App
    nicht aus dem Store kommt. Das ist bei quelloffenen Sideload-Apps normal.

## Aktualisieren

Eine neuere APK **einfach über die installierte Version installieren** — die Daten bleiben
erhalten. Das funktioniert, weil jede Release-APK mit demselben Schlüssel signiert ist;
Android erkennt sie so als dieselbe App.

!!! tip "Die App meldet neue Versionen"
    EasyTrack prüft regelmäßig die GitHub-Releases-Seite. Gibt es eine neuere Version,
    erscheint oben in den **Einstellungen** ein Banner **„Neue Version verfügbar"** — ein
    Tippen öffnet die Download-Seite.

!!! warning "Nicht deinstallieren"
    Beim **Deinstallieren** löscht Android alle App-Daten. Da EasyTrack lokal-first ist,
    ist das der einzige Weg, Daten zu verlieren. Vor einem Gerätewechsel oder einer
    Neuinstallation immer erst eine **[Datensicherung](datensicherung.md)** exportieren.

## Systemvoraussetzungen

- Android mit **minSdkVersion 21** (Android 5.0) oder neuer.
- Für den **Barcode-Scanner** wird die Kamera benötigt (Berechtigung wird beim ersten
  Scan abgefragt, ist aber optional — die App funktioniert auch ohne).
