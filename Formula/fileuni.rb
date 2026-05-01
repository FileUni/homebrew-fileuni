class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.1.12-alpha.3.20260502053403"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.12-alpha.3/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "702dcdb20d282e119a0d1574c060aa3264082b69a3ff1ae162510ebab66aeb02"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.12-alpha.3/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "ab9789ee4b6f6b06e5e9cb5a1388d6297234378bb52034f64a37f55bf5f41523"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.12-alpha.3/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "e971052a0b9c3647c93a237ab27d53c5c3d86d3faeaee6d0b463d462a19f7566"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.12-alpha.3/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "c5fd4291fde3590dbad9a3672521751c6b8de068a027b742a1c3ed033f57aca2"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
