cask "ble-clipboard" do
  version "0.1.0"
  sha256 "6d9c30fed751bcba13142d8c482cb3064ec7f49d4caf06faa44119a054083b0e"

  url "https://github.com/otcan/ble-clipboard/releases/download/v#{version}/BLE-Clipboard-#{version}-universal.zip"
  name "BLE Clipboard"
  desc "Send text over Bluetooth to a Flipper Zero USB keyboard"
  homepage "https://github.com/otcan/ble-clipboard"

  depends_on macos: :sonoma

  app "BLE Clipboard.app"

  caveats <<~EOS
    Install ble_clipboard.fap on your Flipper Zero separately:
      https://github.com/otcan/ble-clipboard/releases/tag/v#{version}

    This early release is ad-hoc signed, not Apple-notarized.
    macOS may require explicit approval in Privacy & Security.
    Gatekeeper remains enabled; this cask does not bypass it.
  EOS
end
