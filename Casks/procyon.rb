cask "procyon" do
  version "1.0.2"
  sha256 "72e2190af067b126424ae989176f73377c9eba2e78044755d27c6ef85a78f5c1"

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
