class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.1.11-alpha.3.20260502035203"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.11-alpha.3_20260502035203/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "03deb49e41a4bbdd3ed535ec6e75dbb8f61f5f00e7f6b7425a94b6262c8f5c12"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.11-alpha.3_20260502035203/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "fa50ac5febd1c353dde242a9ad1ffab73b8a964e142081512102ae772bdfab60"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.11-alpha.3_20260502035203/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "aae3f8b7089863d0941d7aef7dd2bae4a19e3aaa2668b8ee4d52685c18593263"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.11-alpha.3_20260502035203/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "265913ef94af6182a58d050d49e0da3da832ee958a8464a3dea0e88b59da59eb"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
