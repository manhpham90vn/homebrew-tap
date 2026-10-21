cask "deskhub" do
  version "9.3.5"
  sha256 "0bb1b2cbe1fd7bf2608054cda60d3d238171c6ceb6a42d1e847874560066e066"

  url "https://github.com/manhpham90vn/Deskhub/releases/download/v#{version}/deskhub-v#{version}-macos.dmg"
  name "Deskhub"
  desc "LAN remote desktop - share and control screens"
  homepage "https://github.com/manhpham90vn/Deskhub"

  depends_on macos: ">= :sonoma"

  app "Deskhub.app"
  binary "#{appdir}/Deskhub.app/Contents/MacOS/deskhub-cli"

  uninstall launchctl: [
    "com.deskhub.macos.daemon",
    "com.deskhub.macos.unattended",
  ]

  zap trash: [
    "~/.deskhub",
    "/Library/Application Support/Deskhub",
    "/Library/LaunchAgents/com.deskhub.macos.unattended.plist",
  ]
end
