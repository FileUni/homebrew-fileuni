class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.1.10-alpha.1.20260415133208"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.10-alpha.1_20260415133208/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "e90ac69021ee7b93e7e7bf6e0bb4fc71e744c1c2815e95e81a167c8af1283cfb"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.10-alpha.1_20260415133208/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "a5ed8c0de3b11a35872efa1600496216069d9848149df480a5dfcf82c9e9fec1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.10-alpha.1_20260415133208/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "29afb7b791ebef68e6780448312c3b1606d9a8362eca3780c76dd4033bcd6579"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.10-alpha.1_20260415133208/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "06a4c654b9ac92c23762a3b0357232fab070ba5b7372c67e9cdc78a2cedc0506"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
