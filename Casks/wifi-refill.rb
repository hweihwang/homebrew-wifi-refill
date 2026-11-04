cask "wifi-refill" do
  version "1.7.0"
  sha256 "aa4289bd8421f62159b3b4a2aef5fe9e9e2ceee0a4ec8ac05ab051dd9607db10"

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
