# BLE Clipboard Homebrew Tap

Native macOS clipboard bridge to a Flipper Zero USB keyboard over Bluetooth LE.

```sh
brew tap otcan/ble-clipboard
brew install --cask otcan/ble-clipboard/ble-clipboard
```

macOS 14 Sonoma or later; universal Apple Silicon and Intel app.

The Flipper application is installed separately. Download `ble_clipboard.fap`
from the matching [release](https://github.com/otcan/ble-clipboard/releases) and
put it at `/ext/apps/Bluetooth/ble_clipboard.fap` with qFlipper. The initial FAP
targets firmware 1.5.1, API 88.2.

Early releases are ad-hoc signed, not Apple-notarized. This tap preserves macOS
quarantine and does not bypass Gatekeeper. Review the source before approving
a first launch in Privacy & Security.

Source, documentation, tests, and security notes:
[otcan/ble-clipboard](https://github.com/otcan/ble-clipboard).

To upgrade: `brew update` followed by
`brew upgrade --cask otcan/ble-clipboard/ble-clipboard`.

This is a third-party tap, not the official `homebrew/cask` repository.
