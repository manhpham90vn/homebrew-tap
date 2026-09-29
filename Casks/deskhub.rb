cask "deskhub" do
  version "7.0.0"
  sha256 "347922abd6664c45ae518bb5c8d088b6e3406c3551dc7a3a2d33897f3bb2396a"

  url "https://github.com/manhpham90vn/Deskhub/releases/download/v#{version}/deskhub-v#{version}-macos.dmg"
  name "Deskhub"
  desc "LAN remote desktop - share and control screens"
  homepage "https://github.com/manhpham90vn/Deskhub"

  depends_on macos: ">= :sonoma"

  app "Deskhub.app"

  zap trash: "~/.deskhub"
end
