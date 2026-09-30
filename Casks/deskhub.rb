cask "deskhub" do
  version "8.0.0"
  sha256 "f2e586e7c7ded3560226c943c29b139be2eca2291ca9165d1fdcab65f202b8db"

  url "https://github.com/manhpham90vn/Deskhub/releases/download/v#{version}/deskhub-v#{version}-macos.dmg"
  name "Deskhub"
  desc "LAN remote desktop - share and control screens"
  homepage "https://github.com/manhpham90vn/Deskhub"

  depends_on macos: ">= :sonoma"

  app "Deskhub.app"

  zap trash: "~/.deskhub"
end
