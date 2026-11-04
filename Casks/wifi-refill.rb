cask "wifi-refill" do
  version "1.5.0"
  sha256 "a6bac8b16815a1185567732b65923a08b900f53ec6233a83e356781ce78cd36c"

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
