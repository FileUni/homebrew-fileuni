class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.1.13"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.13/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "9b99329b86962282cbca5565b2bcb232409f723d1e8d55071f33332b74c6906d"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.13/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "c00265fd2ef2339c37596721038dc7ce661f31fa1680ca002477258499b8ee00"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.13/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "3b2160ab16a6239dc9c61d6f4927cf052e4b9aadca5dd33c896a16f960d2ab30"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.13/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "fa1dd0e74cd82ac08471afa1811299fd914300458fee9d4c2c0f2b747a08e3f5"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
