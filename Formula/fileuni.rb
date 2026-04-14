class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.1.9"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.9/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "d797f85213cf65e68b8ca901822f2c8e758beff598191bbe51d02aec192ffc87"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.9/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "2127ff668ff031db4757e32bf414951e21b48668a88b9bdec6cfc8aefe1a4895"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.9/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "e11c1b56d0bcfbb7712f07f2c4fe6a142fb673cb30d11415952523d03b6ee131"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.9/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "cad95c40f8bbc983199f57d25c77375ff19e61f82bc4fb5a9ff57261899624ad"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
