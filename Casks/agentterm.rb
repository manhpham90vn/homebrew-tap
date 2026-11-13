cask "agentterm" do
  version "0.5.0"
  sha256 "1ba3513a0cc2506f1fd8506767e09a06689bed5b57c841d77b259ae49d528963"

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
