class DeskhubCli < Formula
  desc "Command-line client for Deskhub, the LAN remote desktop"
  homepage "https://github.com/manhpham90vn/Deskhub"
  url "https://github.com/manhpham90vn/Deskhub/releases/download/v9.2.0/deskhub-cli-v9.2.0-macos"
  version "9.2.0"
  sha256 "7582b495c9035bbb5ee572fdebd310bfa5bd312a8f1a452da3d95675e744c12d"
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
