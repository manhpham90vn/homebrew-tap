cask "agentterm" do
  version "0.6.0"
  sha256 "a8737c48d245c9753e95c3a76b7458df5f4d0367486151c8c3551b3fa432ec4b"

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
