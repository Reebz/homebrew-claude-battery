cask "claude-battery" do
  version "1.44"
  sha256 "f2732b479dc4e99232bd32811c7e3bc22bdbf762f7146f0a056b662673be1121"

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
