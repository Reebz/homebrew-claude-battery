cask "claude-battery" do
  version "1.47"
  sha256 "9b10b9089f3391983dc933811bfcc450299e46fb1ef12d94993fb18bc6380f33"

  url "https://github.com/Reebz/claude-battery/releases/download/v#{version}/claude-battery_v#{version}.dmg",
      verified: "github.com/Reebz/claude-battery/"
  name "Claude Battery"
  desc "macOS menu bar widget showing Claude AI usage as a battery"
  homepage "https://github.com/Reebz/claude-battery"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ClaudeBattery.app"

  zap trash: [
    "~/Library/Preferences/com.reebz.claudebattery.plist",
  ]
end
