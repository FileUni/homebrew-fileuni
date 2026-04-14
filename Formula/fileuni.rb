class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.1.8-alpha.3.20260415010304"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.8-alpha.3_20260415010304/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "b7406134cccf7a31b4fcd61a1289308adc11cd76d5862d506982f3e88bb7abd7"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.8-alpha.3_20260415010304/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "2a4d9a20f96b6a1bc17b0bf97cc140497e1f99812fe63dde8006d00584e49d15"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.8-alpha.3_20260415010304/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "11b45c1ffe64e2738a50132189398d8f22c742a5620668c755066a66c877c46e"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.8-alpha.3_20260415010304/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "f7a531803e2e2f8218a39d8caeaa02e6a7a56eb25bebf2947584ff5af7202337"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
