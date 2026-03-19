class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.0.4"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "57ff79ed68824c60add39512232c431ae280979c957f50225a60536668c09739"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "0de581a45e6b739fa5733a0baca61cb848d1519c418e7b26e76d3a89a1575563"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "c9fe28d938aebbf344e48b9a46b1068fa099a5304457540498d84cd40a4ee724"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "c8d50d1248754473989200a5faa8a8bea928f828fa5536551aa1a07d6733f69d"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
