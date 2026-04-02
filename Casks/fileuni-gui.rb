cask "fileuni-gui" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.2"
  sha256 arm: "b85443696d5c9f48910c7f0758819e5fa2a9180bba6adefb9d1f0314410e2312", intel: "61b763f70c906cd0a1f20e0ffd5c0d7831b4ce6682dd0eeea6c562d643bb881c"

  url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.2/FileUni-gui-#{arch}-macos-darwin.dmg"
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
