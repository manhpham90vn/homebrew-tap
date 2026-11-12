cask "agentterm" do
  version "0.4.0"
  sha256 "76cf8abfe0bb3c4705843aa20cada50ba26f482a062ae80c7f52ef927be6ee69"

  url "https://github.com/manhpham90vn/AgentTerm/releases/download/v#{version}/AgentTerm-#{version}.dmg"
  name "AgentTerm"
  desc "Terminal for coding agents, with an iPhone remote"
  homepage "https://github.com/manhpham90vn/AgentTerm"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "AgentTerm.app"

  uninstall quit: "com.manhpham.agentterm"

  zap trash: [
    "~/Library/Application Support/AgentTerm",
    "~/Library/Preferences/com.manhpham.agentterm.plist",
    "~/Library/Saved Application State/com.manhpham.agentterm.savedState",
  ]
end
