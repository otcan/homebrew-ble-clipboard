cask "ble-clipboard" do
  version "0.5.2"
  sha256 "13b044ad803ad77ba2d315a38a6e6a70f2bf6b75f4d1e7330ab8d7c9c6a631c8"

  url "https://github.com/otcan/ble-clipboard/releases/download/v#{version}/BLE-Clipboard-#{version}-universal.zip"
  name "BLE Clipboard"
  desc "Clipboard and macros over Bluetooth to a Flipper Zero USB keyboard"
  homepage "https://github.com/otcan/ble-clipboard"

  depends_on macos: :sonoma

  app "BLE Clipboard.app"

  caveats <<~EOS
    Install the matching ble_clipboard.fap on your Flipper Zero separately:
      https://github.com/otcan/ble-clipboard/releases/tag/v#{version}
    Open Apps > Bluetooth > BLE Clipboard. Update both apps to this version.

    Gatekeeper remains enabled; this cask does not bypass it.
  EOS
end
