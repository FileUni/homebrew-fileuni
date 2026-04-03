class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.1.4-alpha.3.20260403190958"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.4-alpha.3_20260403190958/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "da81c9beb55d2ccaec60f6587f789a011832c3cf863b99ab04229814a3dcca26"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.4-alpha.3_20260403190958/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "84d68883c5f29564459dbc1f089202b8e010c2fc22da5cfa2eb0b7380c7dde03"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.4-alpha.3_20260403190958/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "59aba7d76ae76ec13edacde9f86c5e0a54bfbc225d9c1a62e6e623d592dad540"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.4-alpha.3_20260403190958/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "93cd791d894ade81cec6254e4848114991195fdf8c8d7637c78c461799cf1d1f"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
