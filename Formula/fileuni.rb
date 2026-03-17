class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.0.4-alpha.9.20260317182019"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.9_20260317182019/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "c45a676d867f139a7c71fbb6e42f9be4bdfea84fe1dd4ea383349c683c2de78f"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.9_20260317182019/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "7d282d40626d7e1980c65375d4c702d375ecb5e636e3408798def4a16a5b60dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.9_20260317182019/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "933bc58fcb1a26caf4c35c137fa1d552941c4811a6129c0fbe76dc2856ff00c8"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.9_20260317182019/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "7fc2b201bafea584f0493cfa0e54ec8a2bb0b80a7033fd22bf8212c5f0dded7b"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
