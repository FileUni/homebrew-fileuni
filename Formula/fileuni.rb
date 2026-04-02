class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.1.2"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.2/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "30afb4d037b715e2fc0a790d73a2537ad0b094582bcb8f471e76689f742cc9aa"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.2/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "f1042ac618696183ad4d384b5ae42e9dda25e0fef4501d10c7f9a00af39751dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.2/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "928d970fe056ef1e53ddef693b4759ca0b29af0699e6d75c8bc80e12f99670cb"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.2/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "c9f3bca78193bf98d614d23bd4f0652cb785515069484ea6c061c868bc008312"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
