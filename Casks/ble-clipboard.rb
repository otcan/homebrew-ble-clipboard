cask "ble-clipboard" do
  version "0.5.3"
  sha256 "2199245fd73e8b77b896a484127fd3c2507f1a1913df1e66b6d5d012a193abb4"

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
