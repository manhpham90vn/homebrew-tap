cask "procyon" do
  version "0.0.5"
  sha256 "6583f2e19486f8d4755d9704fc3678b003ce7b9965fadecd5f0ac4eb7f196125"

  url "https://github.com/manhpham90vn/Procyon/releases/download/v#{version}/Procyon-#{version}.dmg"
  name "Procyon"
  desc "Lightweight task manager"
  homepage "https://github.com/manhpham90vn/Procyon"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Procyon.app"

  uninstall quit: "dev.procyon.app"

  zap trash: [
    "~/Library/Application Support/Procyon",
    "~/Library/Preferences/dev.procyon.app.plist",
    "~/Library/Saved Application State/dev.procyon.app.savedState",
  ]
end
