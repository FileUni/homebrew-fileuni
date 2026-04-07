class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.1.6-alpha.1.20260407083440"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.6-alpha.1_20260407083440/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "28c0f9aa50b04c4433df62c377837af60b566f36ace86ce8c92f82c2df75de57"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.6-alpha.1_20260407083440/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "b3d86510c0b87f5f0a8f6951a9039684c5ff0004b1bee27b9fcd13a945ad4d8f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.6-alpha.1_20260407083440/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "abe0ed15f887a00c932a36f60068c60e0c616ce3fb77ac8b330892780a7fe4c8"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.6-alpha.1_20260407083440/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "a9ef02cfcb82014dc3333db5a6fd61cd75a1bb47b5e893217cb56f85f7d9c3cd"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
