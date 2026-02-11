cask "echo" do
  version "0.0.10"
  sha256 "96ec23bd1ba49f65380e11728bcd847a01c9c66a91b36ab55844e4ecd4aa882e"

  url "https://github.com/apopen/echo/releases/download/v#{version}/Echo-v#{version}-macos-arm64.zip"
  name "Echo"
  desc "Privacy-first voice-to-text for macOS — all processing happens on-device"
  homepage "https://github.com/apopen/echo"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Echo.app"

  zap trash: [
    "~/Library/Application Support/Echo",
    "~/Library/Preferences/com.apopen.echo.plist",
  ]
end
