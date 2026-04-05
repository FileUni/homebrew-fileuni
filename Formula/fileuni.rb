class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.1.5"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.5/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "7655d0dbde45a586557506567f9cf5f01b90072fe88d9cebc14076a6eec33b1e"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.5/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "d249211cece45053068a84ad153444d22f0252c74d1ae45b98bcdcb369b5b8c4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.5/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "0e71baa7f9cb7fca5b266f83d71948070a46fd99318a04abced4c933081edcef"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.5/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "10b3f5e478d04a7b974f9519ee952590c7c965100e81f28a0e5db85d71447948"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
