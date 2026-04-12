class Fileuni < Formula
  desc "FileUni CLI"
  homepage "https://fileuni.com"
  version "0.1.8-alpha.2.20260413065435"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.8-alpha.2_20260413065435/FileUni-cli-aarch64-macos-darwin.zip"
      sha256 "ebdf8b948d5601b2b6ecde03094db326e6f2219db3ecd864b2a4c25f53be023f"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.8-alpha.2_20260413065435/FileUni-cli-x86_64-macos-darwin.zip"
      sha256 "fdf20d1de50eec9f89231e0cbaacd5fa9f3b201fc537f2434518a741d618307f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.8-alpha.2_20260413065435/FileUni-cli-aarch64-linux-gnu.zip"
      sha256 "825a8c1a95df66e3f5164b8154a324a625dd6348ff1cf29a5e788bd8fae07123"
    else
      url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.8-alpha.2_20260413065435/FileUni-cli-x86_64-linux-gnu.zip"
      sha256 "4fdc20bf837ae362d96e229d6ef873c880cee83fbb03dd6dc891c436dc96f66d"
    end
  end

  def install
    bin.install "fileuni"
  end

  test do
    system bin/"fileuni", "--help"
  end
end
