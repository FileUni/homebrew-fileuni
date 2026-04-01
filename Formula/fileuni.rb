class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.1.1"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.1/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "a08a6b8671c26b74a0c832d9c1880b04d61298f201f01201f872b04a02fd5f20"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.1/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "018b6ef7763f146f36116e77b6bb8751b6f380ba3b0c502efed670987e9137d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.1/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "d84fe78f9eb909e607efc0bdad55d70b871b29dd140f3d6492977bb9c749bdbf"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.1/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "1fb86a6eab15031e4577f8a068ae3b4e4c7e54e14a1477f0e0f59129df54a5b5"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
