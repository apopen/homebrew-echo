cask "echo" do
  version "0.0.12"
  sha256 "d63503d4d1484fa8740bfe734a003d5ee6d6d17c66be6ac430b72ab5c03095c5"

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
