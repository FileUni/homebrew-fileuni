class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.0.3"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.3/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "1ae1df1525a472dd4125e1ff7d754538d6e706a1b68e53c4b98fe4342d34d986"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.3/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "e2b236f3540a93b6524c5ed919dc2fd360492555e5b7e9e7e683babbb2e733df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.3/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "14cbcb9cb203b48aa335d9df614d6fa8653e865735a84a9b688c87defb36d0f7"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.3/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "1bd21d9ad5e8662eda7f4c7e0718077dac4c7fa6d3325d1594264f2dc7dcdb7f"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
