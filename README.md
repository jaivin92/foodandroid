# FoodAndroid

Jetpack Compose Android app configured with:

- `compileSdkVersion 35`
- `minSdkVersion 24`
- `targetSdkVersion 35`
- `versionCode 1`
- `versionName "1.0"`

## Build locally

```bash
./gradlew :app:assembleDebug
```

## Install and run on a connected device

```bash
scripts/install-debug-apk.sh
```

You can also pass a custom APK path:

```bash
scripts/install-debug-apk.sh app/build/outputs/apk/debug/app-debug.apk
```

## CI/CD

GitHub Actions workflow: `.github/workflows/android-ci-cd.yml`

- Builds debug APK on push/PR/manual trigger.
- Uploads APK as artifact (`app-debug-apk`) for download from the workflow run page.
