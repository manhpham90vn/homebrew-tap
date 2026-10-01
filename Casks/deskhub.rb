cask "deskhub" do
  version "9.0.1"
  sha256 "02027ac473b4cde4375cb72529ad1cda83b9810d5d2684de7ad9df94e2668a1e"

  url "https://github.com/manhpham90vn/Deskhub/releases/download/v#{version}/deskhub-v#{version}-macos.dmg"
  name "Deskhub"
  desc "LAN remote desktop - share and control screens"
  homepage "https://github.com/manhpham90vn/Deskhub"

  depends_on macos: ">= :sonoma"

  app "Deskhub.app"

  zap trash: "~/.deskhub"
end
