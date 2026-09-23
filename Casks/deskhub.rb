cask "deskhub" do
  version "6.0.0"
  sha256 "aae9a2a0f9c106ed05068b8a32eec9164086aa9c5dbab3735c33b0e293666da0"

  url "https://github.com/manhpham90vn/Deskhub/releases/download/v#{version}/deskhub-v#{version}-macos.dmg"
  name "Deskhub"
  desc "LAN remote desktop - share and control screens"
  homepage "https://github.com/manhpham90vn/Deskhub"

  depends_on macos: ">= :sonoma"

  app "Deskhub.app"

  zap trash: "~/.deskhub"
end
