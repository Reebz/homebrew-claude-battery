cask "claude-battery" do
  version "1.42"
  sha256 "ec0610e4b8282c0b3ff93da1eda68a05cd1c310a540cd39842af139b683febab"

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
