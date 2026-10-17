cask "deskhub" do
  version "9.2.0"
  sha256 "3218bc7503d29abe053ac0f8cc7148ad44dc1f80279f9c803ef9876665b5a48c"

  url "https://github.com/manhpham90vn/Deskhub/releases/download/v#{version}/deskhub-v#{version}-macos.dmg"
  name "Deskhub"
  desc "LAN remote desktop - share and control screens"
  homepage "https://github.com/manhpham90vn/Deskhub"

  depends_on macos: ">= :sonoma"

  app "Deskhub.app"

  zap trash: "~/.deskhub"
end
