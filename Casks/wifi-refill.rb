cask "wifi-refill" do
  version "1.2.1"
  sha256 "1b6a89279d645973350bbf3a7a1a13f0265b95b2fc6f9497d924560af1ad9016"

  url "https://github.com/hweihwang/wifi-refill/releases/download/v#{version}/Wi-Fi-Refill.dmg"
  name "Wi-Fi Refill"
  desc "Logs your Mac back in when cafe Wi-Fi logs you out"
  homepage "https://hweihwang.com/wifi-refill/"

  auto_updates true
  depends_on macos: :sonoma

  app "Wi-Fi Refill.app"

  uninstall quit:       "com.hweihwang.WiFiRefill",
            login_item: "Wi-Fi Refill"

  zap trash: [
    "~/Library/Caches/com.hweihwang.WiFiRefill",
    "~/Library/HTTPStorages/com.hweihwang.WiFiRefill",
    "~/Library/Logs/WiFiRefill.log",
    "~/Library/Preferences/com.hweihwang.WiFiRefill.plist",
  ]
end
