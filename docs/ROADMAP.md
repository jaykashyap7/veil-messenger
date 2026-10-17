# Staged roadmap

## Stage 1 — foundation (current)
- Flutter UI scaffold
- Architecture and threat model
- Honest feature status

## Stage 2 — reproducible build and design freeze
- Generate/verify Android platform project with a pinned Flutter version
- Select and verify the E2EE library/protocol
- Account/device identity and key lifecycle design
- CI build and automated lint/test pipeline

## Stage 3 — secure one-to-one text messaging
- Registration and device enrollment
- E2EE session establishment and key-change verification
- Ciphertext-only relay
- Delivery receipts designed to minimize metadata
- Integration tests with multiple client identities

## Stage 4 — media and local protection
- Client-side file encryption
- Encrypted local database
- Android Keystore integration
- Safe notifications and app lock

## Stage 5 — groups and multiple devices
- Group protocol and membership changes
- Multi-device key distribution and device revocation
- Security testing for joins, leaves and key rotation

## Stage 6 — calls
- WebRTC media transport
- Signaling authenticated through the account/session layer
- E2EE design and verification appropriate to the selected call stack
- TURN relay deployment and abuse controls

## Stage 7 — encrypted backup and release hardening
- Optional client-side encrypted backups with recovery key
- Recovery-loss warning and restore tests
- Dependency audit, penetration test, independent security review
- Privacy policy, deletion/export flows and incident response
