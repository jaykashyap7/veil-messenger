# Build VEIL APK using only your Android phone

This guide builds the **Stage 1 prototype APK**, not a functional secure messenger.

1. Download and extract `VEIL_Stage1_Foundation.zip`.
2. Create a GitHub repository named `veil-messenger` at https://github.com/new.
3. Upload the extracted project files and folders to the repository root. Make sure `.github/workflows/build-apk.yml` is included. GitHub's mobile website may make folder uploads awkward; GitHub's web UI or a Git client app can help.
4. Open the repository's **Actions** tab and select **Build VEIL Android APK**.
5. Tap **Run workflow** if it has not started automatically. Wait for all steps to finish green.
6. Open the completed workflow run, scroll to **Artifacts**, and download `veil-android-debug-apk`.
7. Extract the artifact ZIP on your Android phone and tap `app-debug.apk` to install. Android may ask you to allow installation from that source; only do so for a build you initiated from your own repository, then turn the permission back off afterward.

If analysis or tests fail, do not ignore the failure; inspect the workflow logs. The first run creates the Android platform folder when it is missing.

## Important limitations
- This APK is a UI prototype. Accounts, network messaging, end-to-end encryption, calls, groups, media, and backups are not implemented.
- A debug APK is for testing, not public release. A production release needs a protected signing key and a release build.
- Do not use this prototype for private or sensitive communications.
