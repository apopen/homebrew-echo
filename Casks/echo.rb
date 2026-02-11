cask "echo" do
  version "0.0.11"
  sha256 "0e961e81bc97bfde5e0adc76dea87ac7fcee5c0e1504f084a01196a4ca1141cf"

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
