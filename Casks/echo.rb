cask "echo" do
  version "0.0.7"
  sha256 "d10fb47ca1732906667159abd6a70a5dc575279b181fc1092dda95ddb4c8d2d6"

  url "https://github.com/apopen/echo/releases/download/v#{version}/Echo-v#{version}-macos-arm64.zip"
  name "Echo"
  desc "Privacy-first voice-to-text for macOS — all processing happens on-device"
  homepage "https://github.com/apopen/echo"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Echo.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Echo.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/Echo",
    "~/Library/Preferences/com.apopen.echo.plist",
  ]
end
