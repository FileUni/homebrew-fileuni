class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.0.4-alpha.10.20260318223617"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.10_20260318223617/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "3ff0de427cdc3224b6d6955396a05a1e30b8a8089f3e42e04a1975a45178e3d5"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.10_20260318223617/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "acd6cce0079332d062fae0b87bbe460a4417c038b556ad5dd41e20c5656492c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.10_20260318223617/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "3a40690b80e7bfeb9defff7e2ac3c4e1bbe99fa2e64b7fe00c64afc6b7ef5d64"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.10_20260318223617/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "f4a7bc707916eba058f00f3ce92f3ea892f465a66ff0e0d49d3cd9bf89cb1f8a"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
