cask "micshield" do
  version "1.0.0"
  sha256 "c19ffec066a977724e1b11937e0a0cd3128e566604e11cc7c7f3ae1be93ecb64"

  url "https://github.com/kishorgaikwad2016/MicShield/releases/download/v#{version}/MicShield.dmg"
  name "MicShield"
  desc "Hardware-level microphone kill-switch and notch HUD"
  homepage "https://github.com/kishorgaikwad2016/MicShield"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MicShield.app"

  uninstall quit: "com.anuprayog.micshield"

  zap trash: [
    "~/Library/Application Support/MicShield",
    "~/Library/Caches/com.anuprayog.micshield",
    "~/Library/HTTPStorages/com.anuprayog.micshield",
    "~/Library/Preferences/com.anuprayog.micshield.plist",
  ]
end
