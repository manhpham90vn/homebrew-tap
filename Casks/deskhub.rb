cask "deskhub" do
  version "9.0.2"
  sha256 "cab27949a8eee3b8bbe06f20b13f253c9b3ec77876ffac3b0ae6c36715bc483b"

  url "https://github.com/manhpham90vn/Deskhub/releases/download/v#{version}/deskhub-v#{version}-macos.dmg"
  name "Deskhub"
  desc "LAN remote desktop - share and control screens"
  homepage "https://github.com/manhpham90vn/Deskhub"

  depends_on macos: ">= :sonoma"

  app "Deskhub.app"

  zap trash: "~/.deskhub"
end
