# VEIL — phone-only GitHub upload (no folder upload needed)

GitHub's mobile upload page often does not preserve folders. Use this one ZIP file instead.

## 1. Create a repository
1. Open https://github.com/new in your phone browser.
2. Create a repository named `veil-messenger` (Public or Private is your choice).
3. Do not add a README or other files when creating it.

## 2. Upload this ZIP as one file
1. In the new repository, tap **Add file → Upload files**.
2. Select `VEIL_Phone_Upload_Pack.zip` from your phone's Downloads.
3. Commit the ZIP to the `main` branch.

## 3. Open a Codespace to unpack it
1. In the repository, tap the green **Code** button.
2. Choose **Codespaces → Create codespace on main**. Availability and free quota depend on your GitHub account.
3. When the Codespace editor opens, open **Terminal → New Terminal**.
4. Paste and run this command:

```bash
unzip VEIL_Phone_Upload_Pack.zip -d . && rm VEIL_Phone_Upload_Pack.zip && git add -A && git commit -m "Add VEIL Stage 1 source and APK workflow" && git push
```

If it says `unzip: command not found`, run `sudo apt-get update && sudo apt-get install -y unzip`, then retry the command.

## 4. Build the prototype APK
1. Return to your repository on GitHub.
2. Open **Actions** and choose **Build VEIL Android APK**.
3. Tap **Run workflow** if it did not start automatically.
4. When the run succeeds, open it and download the `veil-android-debug-apk` artifact.
5. Extract the artifact ZIP on your phone and install `app-debug.apk`.

## Honest status
This creates a build of the Stage 1 UI prototype. It is not yet a working private messenger. Real accounts, end-to-end encrypted messages, calls, groups, media transfer and encrypted backups are not implemented. Do not use this prototype for sensitive communication. The APK build and tests must pass in GitHub Actions before considering the build verified.
