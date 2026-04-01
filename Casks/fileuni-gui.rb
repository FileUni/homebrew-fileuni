cask "fileuni-gui" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.1-alpha.1.20260401184702"
  sha256 arm: "faabafbd3945b507f8e4d2da486ba7b213a7f9057d61ab4ae7e9b0ec5ef66fae", intel: "3d9a65165771100cc0c5cc61efe673d6cbd5514b6497f9797a666d3ab9ba90c8"

  url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.1-alpha.1_20260401184702/FileUni-gui-#{arch}-macos-darwin.dmg"
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
