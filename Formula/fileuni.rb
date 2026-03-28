class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "1.0.0-alpha.3.20260329030521"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v1.0.0-alpha.3_20260329030521/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "631ca6dce45c09985b05174c86807db7edc7da9f5fe93dc07ea4e9571be93405"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v1.0.0-alpha.3_20260329030521/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "e04d6ca7cc7e041e74b61a62e1523378b2d4aa908bd4c5b9e42b82d0fef350ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v1.0.0-alpha.3_20260329030521/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "9bba0f21b18a7e6073a361d9ef10673b4a75b3fae17b676e5cde9587ef17ded6"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v1.0.0-alpha.3_20260329030521/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "b240e91842f97c6dd3e50d20e20cb7afbb97853cc7b855e67676e2557d357166"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
