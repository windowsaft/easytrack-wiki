# Installation

EasyTrack is installed as a **sideloaded APK** — there is (as yet) no Play Store listing.
The app is Android-only.

## Download the APK

1. Go to the **[Releases page](https://github.com/windowsaft/easytrack/releases)**.
2. Under **Assets** of the latest release, download `easytrack-x.y.z.apk`.

## Allow the install

Android blocks installs from unknown sources by default.

1. Open the downloaded APK (from the notification or the Files app).
2. Android asks for permission to install from this source →
   **Settings → allow "install from this source"**.
3. Go back and tap **Install**.

!!! note "Play Protect"
    Google Play Protect may warn about sideloaded apps because they don't come from the
    Store. That's normal for open-source sideload apps.

## Updating

Just **install a newer APK over the existing version** — your data is kept. This works
because every release APK is signed with the same key, so Android recognizes it as the
same app.

!!! tip "The app tells you when there's an update"
    EasyTrack periodically checks the GitHub releases page. When a newer version exists, a
    **"New version available"** banner appears at the top of **Settings** — tap it to open the
    download page.

!!! warning "Don't uninstall"
    **Uninstalling** makes Android delete all app data. Since EasyTrack is local-first,
    that's the one way to lose data. Always export a **[backup](datensicherung.md)** before
    switching devices or reinstalling.

## Requirements

- Android with **minSdkVersion 21** (Android 5.0) or newer.
- The **barcode scanner** needs the camera (requested on first scan, but optional — the app
  works without it).
