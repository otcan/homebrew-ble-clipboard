# BLE Clipboard Homebrew Tap

Native macOS clipboard and macro companion for a Flipper Zero USB keyboard and
mouse over Bluetooth LE. The matching Mac and Flipper apps are independent of
Ducker.

```sh
brew tap otcan/ble-clipboard
brew install --cask otcan/ble-clipboard/ble-clipboard
```

macOS 14 Sonoma or later; universal Apple Silicon and Intel app.

The current release is [0.5.3](https://github.com/otcan/ble-clipboard/releases/tag/v0.5.3).
The Flipper application is installed separately. Download the matching
`ble_clipboard.fap` from that release and put it at
`/ext/apps/Bluetooth/ble_clipboard.fap` with qFlipper. Open Apps > Bluetooth >
BLE Clipboard. The release FAP targets firmware 1.5.1, API 88.2; update both apps
together.

0.5.3 fixes SD initialization for saving snapshots and transfers larger than
4 KiB. No SD formatting or snapshot migration is needed; the 20-slot limit is
unchanged.

The 0.5.3 Mac app is Developer ID signed, Apple-notarized and ticket-stapled.
The public downloads and SHA-256 checksums have been verified. This tap preserves
macOS quarantine and does not bypass Gatekeeper. Historical 0.1.0 assets remain
ad-hoc signed and unchanged.

Source, documentation, tests, and security notes:
[otcan/ble-clipboard](https://github.com/otcan/ble-clipboard).

To upgrade: `brew update` followed by
`brew upgrade --cask otcan/ble-clipboard/ble-clipboard`.

This is a third-party tap, not the official `homebrew/cask` repository.
