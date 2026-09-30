class DeskhubCli < Formula
  desc "Command-line client for Deskhub, the LAN remote desktop"
  homepage "https://github.com/manhpham90vn/Deskhub"
  url "https://github.com/manhpham90vn/Deskhub/releases/download/v8.0.0/deskhub-cli-v8.0.0-macos"
  version "8.0.0"
  sha256 "be8c9f0c9e1c30fb1eeaa7b157a04cab61c9661670fb555e19ef6d551bee447b"
  license "MIT"

  depends_on :macos

  def install
    bin.install "deskhub-cli-v#{version}-macos" => "deskhub-cli"
    chmod 0555, bin/"deskhub-cli"
  end

  test do
    system bin/"deskhub-cli", "version"
  end
end
