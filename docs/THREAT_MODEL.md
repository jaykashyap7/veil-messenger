# Initial threat model

## Assets
- Message and attachment contents
- Identity and device keys
- Contact graph and usage metadata
- Account recovery secrets
- Local notification content and backups

## Threats to address
- Network observer: mitigate content exposure with E2EE and transport security.
- Curious/compromised server: server should receive ciphertext and minimized metadata only.
- Stolen unlocked phone: app lock helps but does not replace OS/device security.
- Stolen locked phone: protect local key material with Android Keystore and encrypted local storage.
- Malicious recipient: cannot prevent screenshots, copying or photographing a screen.
- Account takeover: rate limits, device/session verification, key-change alerts and safe recovery.
- Push provider: opaque notifications; avoid plaintext message content and sensitive identifiers.
- Malicious dependency/build: dependency pinning, review, SBOM and reproducible build goals.
- Spam and abuse: privacy-preserving rate limits, user blocking/reporting and carefully limited telemetry.

## Security claim policy
Do not market VEIL as “unhackable” or “fully secure.” Do not claim E2EE works until protocol integration and end-to-end tests demonstrate it. A code review or passing unit test is not an independent security audit.
