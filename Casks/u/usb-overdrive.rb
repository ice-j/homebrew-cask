cask "usb-overdrive" do
  version "5.3"
  sha256 "8cb63d1a1116538651909a6828897dbe4011542fb9b0fc091191f0f324a02e60"

  url "https://www.usboverdrive.com/download/USB-Overdrive-#{version.no_dots}.dmg"
  name "USB Overdrive"
  desc "USB and Bluetooth device driver"
  homepage "https://www.usboverdrive.com/"

  livecheck do
    url "https://www.usboverdrive.com/index.php/download/"
    regex(/>USB\s+Overdrive\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :big_sur"

  app "USB Overdrive.app"

  zap trash: [
    "~/Library/Preferences/com.usboverdrive.app.plist",
    "~/Library/Preferences/com.usboverdrive.settings.plist",
  ]
end
