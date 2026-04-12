class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.1.8-alpha.1.20260412224510"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.8-alpha.1_20260412224510/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "8e015dd52c38bb459ae09773402b9a3ffa168fca726031ad3c48b5facf9c024a"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.8-alpha.1_20260412224510/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "0a5116034894bdf4015c9eab7b5e3476ae756f90e113662a6f39107945c99b3a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.8-alpha.1_20260412224510/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "87dc1537663268c9832ebb2d8f7804b03bb664410ec6628eb2737bbf103df8bb"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.8-alpha.1_20260412224510/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "98f607af916f783be4503cdc093a5ddd0379d270f43c4d4abb2055f3157a4c40"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
