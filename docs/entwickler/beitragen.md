# Contributing

Contributions are welcome. The source lives at
[github.com/windowsaft/easytrack](https://github.com/windowsaft/easytrack).

## License

The **source code** is under the **[GPL-3.0](https://github.com/windowsaft/easytrack/blob/master/LICENSE)**.
This keeps every fork open source under the same license. By contributing you agree that your
contribution is published under the GPL-3.0.

The **bundled food data is not covered by the GPL**:

- **BLS 4.0** — [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) (attribution).
- **Open Food Facts** — [ODbL 1.0](https://opendatacommons.org/licenses/odbl/1-0/)
  (attribution + share-alike for the derived pack).

## Code style

- Strict lints apply (`analysis_options.yaml`, base `flutter_lints`). Among them:
  **`unawaited_futures` and `close_sinks` are errors** (a swallowed Future in a write path
  silently corrupts user data), `strict-casts`, `strict-raw-types`, **single quotes**,
  explicit return types, ordered imports.
- `flutter analyze` must be clean before a commit.

## Tests

Everything must be green — CI enforces it:

```bash
flutter test
cd tools/etl && npm test        # from tools/etl!
flutter build apk --debug        # catches native/KGP clashes analyze/test miss
```

!!! danger "Widget tests over drift streams"
    Widget tests that render an in-memory drift DB **hang** (rather than fail) if you break
    three rules:

    1. **Never `pumpAndSettle`** — the loading state is a `CircularProgressIndicator` whose
       animation never settles. Pump a fixed number of frames instead.
    2. **Unmount the tree before the test ends** — `pumpWidget(SizedBox())`, then
       `pump(Duration(milliseconds: 1))` (a real duration, or drift's zero-duration timer
       never runs).
    3. **Never close the DB from a widget test** — `close()` in the fake-async zone never
       returns and the whole `flutter test` process hangs with no report.

    See `docs/testing.md` and `test/features/diary_screen_test.dart` in the app repo.

## Commits

**[Conventional Commits](https://www.conventionalcommits.org/)** — one commit per completed
unit, and the **body explains the why**, not just the what.

Examples:

```
feat(diary): drinks logged and shown in ml
fix(backup): clean stale -wal sidecar before swapping the DB in
docs(wiki): document the release signing flow
```

## Reporting bugs

Via the app repo's **[GitHub Issues](https://github.com/windowsaft/easytrack/issues)**. For
UI/device issues, please include the Android version and reproduction steps.
