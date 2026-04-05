cask "fileuni-gui" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.5"
  sha256 arm: "99b0c24636d046992f33df36a286f996fa37c912ae5fc6955b4f7ca5f413e90a", intel: "e87f53e5db8bbf977bc69bcba6cbbb12867fedc81086e92598614e206a9ecd39"

  url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.5/FileUni-gui-#{arch}-macos-darwin.dmg"
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
