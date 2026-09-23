cask "claude-battery" do
  version "1.73"
  sha256 "bbc19e83daae48b6d2cab2125f7dda5f44910e233384bbb044b36224d3cf44e8"

  url "https://github.com/Reebz/claude-battery/releases/download/v#{version}/claude-battery_v#{version}.dmg"
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
