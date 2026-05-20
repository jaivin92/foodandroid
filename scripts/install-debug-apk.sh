#!/usr/bin/env bash
set -euo pipefail

APK_PATH="${1:-app/build/outputs/apk/debug/app-debug.apk}"
PACKAGE="com.example.foodandroid"
ACTIVITY=".MainActivity"

if ! command -v adb >/dev/null 2>&1; then
  echo "adb not found. Install Android Platform Tools first."
  exit 1
fi

if [ ! -f "$APK_PATH" ]; then
  echo "APK not found at $APK_PATH"
  echo "Build it first with: ./gradlew :app:assembleDebug"
  exit 1
fi

echo "Installing $APK_PATH ..."
adb install -r "$APK_PATH"

echo "Launching app ..."
adb shell am start -n "$PACKAGE/$ACTIVITY"

echo "Done."
