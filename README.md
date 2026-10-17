# VEIL — Stage 1 Foundation

VEIL is a privacy-first Android messaging project. This repository is a **Stage 1 scaffold**, not a complete secure messenger.

## Status

- [x] Flutter app shell and dark UI
- [x] Architecture and threat-model documentation
- [x] Explicit implementation status and security TODOs
- [ ] Real account registration/authentication
- [ ] End-to-end encrypted messaging
- [ ] Encrypted media uploads
- [ ] Groups, calls, channels, push notifications
- [ ] Encrypted backup and restore
- [ ] Independent security audit

No message encryption or backend security is claimed as implemented in this stage.

## Run

Install Flutter and Android Studio/Android SDK on a computer, then:

```bash
flutter create --platforms=android .
flutter pub get
flutter run
```

This scaffold deliberately avoids adding unverified cryptographic packages at this stage. Before implementing E2EE, select a maintained, audited protocol library compatible with Flutter/Android and verify its official documentation, release history, platform support, and security review.

## Suggested next milestone

Stage 2: establish reproducible Android build, app configuration, threat model review, secure account/device identity design, and protocol/library selection. Do not send real private messages until end-to-end encryption and server-side ciphertext-only handling are implemented and tested.
