class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.0.4-alpha.3.20260316152346"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.3_20260316152346/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "0dcae593c364f3324295e57faf267ed13f62d2d52169ddae22897e79877516ef"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.3_20260316152346/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "24d465d8fe9461f75cbac071d9da2ffee10d10a71728db37b6b3fa630cecf1cb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.3_20260316152346/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "4355c5b550c43c336476e148cc0012d225668425960c68d9cb8e19fa9bdf60e7"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.3_20260316152346/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "101299954b75b97ef8bceb8f4e3dab3955430b5f661d3dfbdc5b3cec89022f0a"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
