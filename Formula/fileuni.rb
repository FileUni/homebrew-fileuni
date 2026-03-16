class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.0.4-alpha.1.20260316125134"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.1_20260316125134/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "17c79e61e0772a8f3dd6e12273bac7672f12cf2fb86bac0bf59839acb2b0592c"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.1_20260316125134/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "2f5e285548bcaf18336f5fa6caa0009e355150000a136870e9d2a21358f20614"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.1_20260316125134/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "5f804e23d54dff602eb3a4bb1c7d975de982265eacefc83ae856c6e73fc6721a"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.0.4-alpha.1_20260316125134/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "1eab6279e0b329bc1020ee70c69db0673944db330a901de7c3b7ffcf35793c75"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
