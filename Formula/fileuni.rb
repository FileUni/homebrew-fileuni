class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.0.2-alpha2"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.2-alpha2/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "99417fdf90d45871c8b2c47960d76e8d824130107d2c0cf9b46c54be62c2a463"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.2-alpha2/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "3fdcde7e840cea3752401224b4cd696d8e3a0e32c7dbca7b3536b724bce5ad9a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.2-alpha2/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "02c713ab5cfe54d794227f28bd48fd3cad798d21db17db62cc398394b66f982a"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.2-alpha2/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "d306d2681227e96d05db365b36c79fe78aaaa7d145280aa78e0107f4e73ba736"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
