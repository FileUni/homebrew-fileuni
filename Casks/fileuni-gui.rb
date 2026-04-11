cask "fileuni-gui" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.7"
  sha256 arm: "b0134810f4a9989e06f15ce73da2ce63058e8a63699fddaf3f7574a7eec1272e", intel: "15abcd3587b9dc686fa36d4c7e1504b77f527aef4a5e76391bb7e8940e9ec953"

  url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.7/FileUni-gui-#{arch}-macos-darwin.dmg"
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
