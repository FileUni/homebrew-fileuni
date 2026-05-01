cask "fileuni-gui" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.11-alpha.3.20260502035203"
  sha256 arm: "62de5e614b915be00c2c2bc4f758a09815e2259886413cef00e4c74a7a9f0c30", intel: "47a3e029f43c6e215c232768ba14e63acb5e652d09725683a2e6e990213d6b55"

  url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.11-alpha.3_20260502035203/FileUni-gui-#{arch}-macos-darwin.dmg"
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
