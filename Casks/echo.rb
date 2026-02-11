cask "echo" do
  version "0.0.14"
  sha256 "242233252e2e5c365719c639be87ad190f8917a2c3061adfd6f0b91a766a3cbc"

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
