class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.1.7-alpha.3.20260412035005"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.7-alpha.3_20260412035005/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "301a32f39963b1eee8387da98a39e678d7e84d959683e1fb0a337a61788f9107"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.7-alpha.3_20260412035005/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "c893485ac61a0672bf19dea61228320c8c427dc4537ab5983be457d54730e84c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.7-alpha.3_20260412035005/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "cd8dad345769ddd6c4472800c153aeab08cdd51232ff630bf8c80dac9f1cdd3c"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.7-alpha.3_20260412035005/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "142408e7d84d116c3aa81e162c99ae1da960b11ece80cf84539cea52a9fc42c9"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
