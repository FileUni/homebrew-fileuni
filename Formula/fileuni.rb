class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.1.1-alpha.1.20260401184702"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.1-alpha.1_20260401184702/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "28246365287a5a89e5105147c16349599d450e5137c2eecb218ba585ad458c1d"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.1-alpha.1_20260401184702/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "b4f0df326bd536352dc4fe90062864e3e4b2036655f59820dd90493f13d10262"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.1-alpha.1_20260401184702/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "7e5e762549867cb0d480b10eaee164e071e4e5d2f0ce4f37e419452ba63f900a"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.1-alpha.1_20260401184702/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "0dc0cde94e7a87cb4013320c1899baed44398b7d53a8a50b8e8dfa0e284fb054"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
