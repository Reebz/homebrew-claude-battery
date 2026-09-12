cask "claude-battery" do
  version "1.72"
  sha256 "3698ec6a53320b231cb6ebf2bc3bf679beeee87d11f0eb336acad9726a759857"

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
