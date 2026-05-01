class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.1.12"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.12/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "cc5f85d91cad6e0bbb75dd726c2796677b342e040eaab380cc0c24a621600e83"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.12/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "f2858d4a27c454fcf05201a962938bd55adba6540f1309cc25cd8e7d99ee5b12"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.12/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "d90bf48f342e68e73623dbeab8a5b430d8f037deb790a168f3aae2d50d67a591"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.12/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "ab7fb55e58ee13af117fcabdf9beea1ca182fa56cd8252938a7c39fb5ebd4345"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
