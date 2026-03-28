class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "1.0.0-alpha.1.20260329012348"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v1.0.0-alpha.1_20260329012348/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "4d678192e7c35d66b4535ccbe5fb2fc0063129982ff4a282ff51c3aa8f9aac2b"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v1.0.0-alpha.1_20260329012348/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "30a7003e71e00e7c2e84627314ce5d22a3699c7fde4152bf97ce490dfbcd5b3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v1.0.0-alpha.1_20260329012348/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "63daaa2416f6e6636ef0deb231519156da983912d4ae566a4cb35648e2a6bdcf"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v1.0.0-alpha.1_20260329012348/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "8e1f41a05ddb791c467d221ab1bcf9c3e03f4253e14ce42b2048e0e4a1898415"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
