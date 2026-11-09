cask "ble-clipboard" do
  version "0.5.4"
  sha256 "6b3fec01dc54550789e52d3e55b3c1edfa03da51f8f5bb7de67351f7fb2caf77"

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
