class DeskhubCli < Formula
  desc "Command-line client for Deskhub, the LAN remote desktop"
  homepage "https://github.com/manhpham90vn/Deskhub"
  url "https://github.com/manhpham90vn/Deskhub/releases/download/v6.0.0/deskhub-cli-v6.0.0-macos"
  version "6.0.0"
  sha256 "6634c60d224c9119646a28b52236d618e03c821a8fbf9ee1913b39a91c7044ae"
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
