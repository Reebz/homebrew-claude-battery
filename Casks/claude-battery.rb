cask "claude-battery" do
  version "1.70"
  sha256 "4aab0b76f79472c8127fb148b31f2c7627ee3b809db8dc63411e350cccf4e90b"

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
