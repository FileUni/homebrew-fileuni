class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.0.4-alpha.2.20260316142031"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.2_20260316142031/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "face6143515974819153094680093067a49a6fafe4f2ac50c8515215a4986200"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.2_20260316142031/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "d371c5b321de06dd5184575d2841b07000d474d18964576872f5bae353fc6bed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.2_20260316142031/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "65cff312ab961c8c950232a1edea1aa69f2b6335ce9fa2c548889e8af5425dd8"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.2_20260316142031/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "67b35b238747c9f68e82c387d290a18daf75a31e5f77fde9881073aa02eab6c2"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
