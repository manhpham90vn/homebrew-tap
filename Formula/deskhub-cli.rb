class DeskhubCli < Formula
  desc "Command-line client for Deskhub, the LAN remote desktop"
  homepage "https://github.com/manhpham90vn/Deskhub"
  url "https://github.com/manhpham90vn/Deskhub/releases/download/v7.0.0/deskhub-cli-v7.0.0-macos"
  version "7.0.0"
  sha256 "d9f02e195ff3b1f9bd31aa16439bbff74dcd875b79c5927b0cfd3fc5f5756e51"
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
