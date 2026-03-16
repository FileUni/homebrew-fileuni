class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.0.4-alpha.5.20260316202935"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.5_20260316202935/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "b80fb26bf12cc05af6c5759d16faa32f16da17ae2ea3b2901dd52e977663ec7d"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.5_20260316202935/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "de8815b5bd201bd7ff1d587b56a3d29eb18f0674548e514085322bef55d70cb8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.5_20260316202935/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "305342fd6dec8681529c1c77764b40032a638880ed37c30f40a8418d5a6de5f9"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.5_20260316202935/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "c1ff38204928bfeca1df8e0f3231e21f62b6c3dc13e07d0f81951c5c0b716560"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
