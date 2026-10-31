cask "wifi-refill" do
  version "1.0.1"
  sha256 "2ad20dac600b4b5cc67417741460d1c07d28b699e6f874b73d39ab2e50343feb"

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
