# VEIL architecture — proposed target

## Principles
1. End-to-end encryption by default for all private conversations.
2. No custom cryptographic primitives.
3. Collect the minimum metadata required for reliable delivery and abuse prevention.
4. Server stores ciphertext, not plaintext message bodies or media keys.
5. Secure-by-default notifications; no message text in push payloads.
6. Security claims must match tested and independently reviewed behavior.

## Proposed components

### Android client
- Flutter UI and application state.
- Native Android integration where needed for Keystore, secure lifecycle handling, notifications and call audio.
- Local database encrypted using a maintained library; key material protected by Android Keystore.
- Protocol adapter isolating UI/business logic from the selected E2EE library.
- Media pipeline: generate random per-file key, encrypt on device, upload ciphertext, send the encrypted file key inside the E2EE message.
- Device/session screen showing linked devices and key-change warnings.

### Backend services
- Account and device registration.
- Public prekey bundle distribution, if required by selected protocol.
- Opaque encrypted-message relay and short-lived delivery queue.
- Encrypted media object storage.
- Rate limiting, spam/abuse controls and minimal operational logs.
- WebSocket or equivalent authenticated real-time delivery.
- Push service receives opaque wake-up notifications only.

### Data boundaries
- Message plaintext: sender/recipient devices only.
- Message ciphertext: relay service.
- Media plaintext: client only; storage receives ciphertext.
- Private identity/session keys: device only, protected by platform security.
- Public keys/prekeys: server-distributed, with integrity and key-change handling.
- Operational metadata: minimized, documented retention period, access controls and deletion process.

## Critical design decisions before Stage 2
- Choose a maintained E2EE protocol implementation and verify exact Flutter/Android support.
- Decide whether multi-device is in the initial scope; it materially changes key management.
- Design account recovery without silently weakening E2EE.
- Threat model account takeover, malicious recipients, compromised endpoints, spam, metadata correlation, backup theft and push-provider exposure.
- Decide server deployment region, retention, abuse response and legal obligations.

## Explicitly not implemented in Stage 1
No authentication, encryption, key management, network transport, database, calls, push notifications, groups, media upload or backups are implemented.
