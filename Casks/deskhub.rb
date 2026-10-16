cask "deskhub" do
  version "9.0.3"
  sha256 "bbb3622eb2e02105930b12e1aa7f9656629e55fdd15a6fd8a484c22a8c81b53e"

  url "https://github.com/manhpham90vn/Deskhub/releases/download/v#{version}/deskhub-v#{version}-macos.dmg"
  name "Deskhub"
  desc "LAN remote desktop - share and control screens"
  homepage "https://github.com/manhpham90vn/Deskhub"

  depends_on macos: ">= :sonoma"

  app "Deskhub.app"

  zap trash: "~/.deskhub"
end
