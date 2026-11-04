# BLE Clipboard Homebrew Tap

Send clipboard text and macros from your Mac over Bluetooth LE to a Flipper Zero,
which acts as a USB keyboard and mouse on the target computer.

## Install the Mac App

```sh
brew tap otcan/ble-clipboard
brew install --cask otcan/ble-clipboard/ble-clipboard
```

macOS 14 Sonoma or later; universal Apple Silicon and Intel app.

No Homebrew? [Download the Mac ZIP](https://github.com/otcan/ble-clipboard/releases/download/v0.5.3/BLE-Clipboard-0.5.3-universal.zip),
unzip it and move the app to Applications.

## Install the Flipper Companion

**Homebrew installs the Mac app, not the Flipper companion.** Install qFlipper
for the initial file transfer if you do not already have it:

```sh
brew install --cask qflipper
```

Or [download qFlipper from Flipper's official site](https://flipper.net/pages/downloads).

1. [Download ble_clipboard.fap](https://github.com/otcan/ble-clipboard/releases/download/v0.5.3/ble_clipboard.fap).
2. Leave the Flipper at its home screen with a microSD card inserted and connect
   it by USB. In qFlipper's File Manager, upload the FAP to **SD Card > apps > Bluetooth**.
   Create the folders if needed; the device path is `/ext/apps/Bluetooth/ble_clipboard.fap`.
3. On the Flipper, open **Apps > Bluetooth > BLE Clipboard**.

qFlipper can be closed after copying the file. A microSD card reader is also an
option; see the [full setup guide](https://github.com/otcan/ble-clipboard#install-the-matching-pair).
The release FAP targets official firmware 1.5.1 / API 88.2. Install the matching
0.5.3 pair and update both apps together.

[Screenshots of both apps](https://github.com/otcan/ble-clipboard#screenshots) &middot;
[Release notes and checksums](https://github.com/otcan/ble-clipboard/releases/tag/v0.5.3)

## Current Release

0.5.3 fixes SD initialization for saving snapshots and transfers larger than
4 KiB. No SD formatting or snapshot migration is needed; the 20-slot limit is
unchanged.

The 0.5.3 Mac app is Developer ID signed, Apple-notarized and ticket-stapled.
The public downloads and SHA-256 checksums have been verified. This tap preserves
macOS quarantine and does not bypass Gatekeeper. Historical 0.1.0 assets remain
ad-hoc signed and unchanged.

Source, documentation, tests, and security notes:
[otcan/ble-clipboard](https://github.com/otcan/ble-clipboard).

## Upgrade

Quit the Mac app, then run:

```sh
brew update
brew upgrade --cask otcan/ble-clipboard/ble-clipboard
```

Exit the Flipper app before replacing its FAP with the matching version.

This is a third-party tap, not the official `homebrew/cask` repository.
