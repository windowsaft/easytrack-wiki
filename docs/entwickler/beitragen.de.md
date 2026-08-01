# Mitwirken

Beiträge sind willkommen. Der Quellcode liegt auf
[github.com/windowsaft/easytrack](https://github.com/windowsaft/easytrack).

## Lizenz

Der **Quellcode** steht unter der **[GPL-3.0](https://github.com/windowsaft/easytrack/blob/master/LICENSE)**.
Damit bleibt jeder Fork quelloffen unter derselben Lizenz. Mit einem Beitrag stimmst du zu,
dass er unter der GPL-3.0 veröffentlicht wird.

Die **mitgelieferten Lebensmitteldaten fallen nicht unter die GPL**:

- **BLS 4.0** — [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) (Attribution).
- **Open Food Facts** — [ODbL 1.0](https://opendatacommons.org/licenses/odbl/1-0/)
  (Attribution + Share-alike für das abgeleitete Paket).

## Code-Stil

- Es gelten strenge Lints (`analysis_options.yaml`, Basis `flutter_lints`). Unter anderem:
  **`unawaited_futures` und `close_sinks` sind Fehler** (eine verschluckte Future in einem
  Schreibpfad korrumpiert stillschweigend Nutzerdaten), `strict-casts`, `strict-raw-types`,
  **single quotes**, explizite Rückgabetypen, geordnete Importe.
- Vor dem Commit muss `flutter analyze` sauber sein.

## Tests

Alles muss grün sein — CI erzwingt es:

```bash
flutter test
cd tools/etl && npm test        # aus tools/etl!
flutter build apk --debug        # fängt native/KGP-Konflikte, die analyze/test nicht sehen
```

!!! danger "Widget-Tests über drift-Streams"
    Widget-Tests, die eine In-Memory-drift-DB rendern, **hängen** (statt zu scheitern), wenn
    man drei Regeln bricht:

    1. **Nie `pumpAndSettle`** — der Ladezustand ist ein `CircularProgressIndicator`, dessen
       Animation nie zur Ruhe kommt. Stattdessen eine feste Zahl Frames pumpen.
    2. **Baum vor Test-Ende unmounten** — `pumpWidget(SizedBox())`, dann `pump(Duration(milliseconds: 1))`
       (echte Dauer, sonst läuft drifts Null-Dauer-Timer nicht).
    3. **Nie die DB aus einem Widget-Test schließen** — `close()` im fake-async-Zone kehrt
       nie zurück und der ganze `flutter test`-Prozess hängt ohne Report.

    Siehe `docs/testing.md` und `test/features/diary_screen_test.dart` im App-Repo.

## Commits

**[Conventional Commits](https://www.conventionalcommits.org/)** — ein Commit pro
abgeschlossener Einheit, und der **Body erklärt das Warum**, nicht nur das Was.

Beispiele:

```
feat(diary): drinks logged and shown in ml
fix(backup): clean stale -wal sidecar before swapping the DB in
docs(wiki): document the release signing flow
```

## Fehler melden

Über die **[GitHub Issues](https://github.com/windowsaft/easytrack/issues)** des App-Repos.
Bei UI-/Geräteproblemen bitte Android-Version und Reproschritte angeben.
