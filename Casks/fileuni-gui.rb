cask "fileuni-gui" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.8-alpha.3.20260415010304"
  sha256 arm: "f6d3230949e8a340fde6c40df227d86bb52af82fc1f75400dc757d8943fcbffb", intel: "04b136edef07d3f9094080db8268b36acdc59a6b87d83617fc0609de0a91af68"

  url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.8-alpha.3_20260415010304/FileUni-gui-#{arch}-macos-darwin.dmg"
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
