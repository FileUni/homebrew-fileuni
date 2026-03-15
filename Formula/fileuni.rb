class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.0.2-alpha4.11.20260316002214"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.2-alpha4.11_20260316002214/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "c1bef8724a47ada6e51b884f062d20781bdc02bf587aad033c386b71c777aa69"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.2-alpha4.11_20260316002214/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "76d179808346a740e03cbff82783886c2e1a1b15273bb80ebbf7a8cc10083c7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.2-alpha4.11_20260316002214/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "a2ce8de42f3cfd00f49eddc6400fad935f92a1f08f262b3fe3e405942a24bd95"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.2-alpha4.11_20260316002214/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "9de370703395a7ce6bb2d83b40856bf4bfad05500ee076fb90b32ec25ad57194"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
