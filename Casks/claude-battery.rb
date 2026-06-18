cask "claude-battery" do
  version "1.50"
  sha256 "82260b841afe3c4bdff731b9128e8e3e2089985662f83a739ba452ea37d695fa"

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
