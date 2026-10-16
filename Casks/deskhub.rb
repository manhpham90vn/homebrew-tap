cask "deskhub" do
  version "9.1.0"
  sha256 "28d5394c2bf0dcab4442c78cf83fea48aa482cf84101e4c59fd7a5aa4d3486f4"

  url "https://github.com/manhpham90vn/Deskhub/releases/download/v#{version}/deskhub-v#{version}-macos.dmg"
  name "Deskhub"
  desc "LAN remote desktop - share and control screens"
  homepage "https://github.com/manhpham90vn/Deskhub"

  depends_on macos: ">= :sonoma"

  app "Deskhub.app"

  zap trash: "~/.deskhub"
end
