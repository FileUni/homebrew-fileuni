cask "fileuni-gui" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.8-alpha.2.20260413065435"
  sha256 arm: "154dbfe8a846bb346522fed5c65c12fce77c35086e86bf1f2829209a31d5a76f", intel: "ab77fbcabfcbee0d90a459c11b9a0fd8ba377301ed55046b5ece6c573a61639b"

  url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.8-alpha.2_20260413065435/FileUni-gui-#{arch}-macos-darwin.dmg"
  name "FileUni UI"
  desc "FileUni GUI"
  homepage "https://fileuni.com"

  app "FileUni UI.app"

  zap trash: [
    "~/Library/Application Support/com.fileuni.ui",
    "~/Library/Caches/com.fileuni.ui",
    "~/Library/Preferences/com.fileuni.ui.plist",
    "~/Library/Saved Application State/com.fileuni.ui.savedState",
  ]
end
