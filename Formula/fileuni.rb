class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.1.7"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.7/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "ed247483048aff1d71e0ff23af7517f5c862ca65b662136db541bf90efbb89a3"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.7/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "74f26558af8129b39aabc8faadf1f12291b91f563239181f7a5ffe025f58fbb0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.7/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "e6a4d34d42fa0ad9931bba8632d09cb86983a99a072e1e6da2b08a10c3eb28db"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.7/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "f85aa9b2a5ba46cb639aa77156fad9b15dda1c2cef6fa7586a2048404f2adc50"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
