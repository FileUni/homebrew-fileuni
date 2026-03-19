class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.0.4-alpha.12.20260319144653"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.12_20260319144653/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "53474dfefe9ef833cbbc003cc7318e8bf62ed3bce8a87fdd76ef4344b5d3bd54"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.12_20260319144653/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "d19f0452cb514990d9df0f66c8b0b9ab85cd19bf806470a8bf1281a942ab633d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.12_20260319144653/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "98d32438f6c937c2917add9825dfd1cb52eade4df842f8a0bfdbbdc495e68074"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.12_20260319144653/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "87ca5aa32a69b58ce2430f48cf4db77a5481cccfbb9fcff8bd557c8768cb9b51"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
