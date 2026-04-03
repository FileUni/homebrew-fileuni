cask "fileuni-gui" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.4-alpha.3.20260403190958"
  sha256 arm: "621027a84e578ef8b22c51938e238ac6e3bdb5dc6fc586751c6f6a000b2f4d6e", intel: "49ffa985d1d4c3906d26a72ed66db375aee0ef1a7fd5f7c02729be4a5e855a82"

  url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.4-alpha.3_20260403190958/FileUni-gui-#{arch}-macos-darwin.dmg"
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
