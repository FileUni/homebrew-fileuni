class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.1.10-alpha.3.20260419235940"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.10-alpha.3_20260419235940/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "275990833f637948f28e71d4a0818b5222c122e71712c2291aa7cb8235f4bdb4"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.10-alpha.3_20260419235940/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "4433b04fa403fa5eedf5787147b608d499917038aba25577f4d54173f9907bc1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.10-alpha.3_20260419235940/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "f5e00a6c508bde71421ff808f5328c237b551c7d01a3f467fc3cb3ea77cbfe1f"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.10-alpha.3_20260419235940/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "43e5e04ad9549b5c6234e17f73ce76a4e7fc3273d602d420b8b34b9c13c4a305"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
