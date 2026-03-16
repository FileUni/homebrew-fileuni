class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.0.4-alpha.4.20260316172913"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.4_20260316172913/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "201f8e98147eb6a3d47d7ac9834af173ffdaf64c9af667a0a3ffb9d7af2d6ac3"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.4_20260316172913/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "062fb09e18f3553dfd40b51a4babdcc752e28b2f4fdfd08ce37afeeef3d15590"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.4_20260316172913/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "651103d9fdad85ddde555ae34c656e26d5ec9c875bc401bc3f454627374eb07c"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.4_20260316172913/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "c0542fd089d4a913e5681b1a9cd95badffc72c2164e1a5552817db4aa537f572"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
