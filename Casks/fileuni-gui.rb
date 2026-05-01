cask "fileuni-gui" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.12"
  sha256 arm: "6abe25c7fc8cf51b379bc942fd88a75c60753da2acffc44346635adf1e3538a7", intel: "416a42a037bd0e0cf3e455d19497a4d76e51ac55ca54bd964b4a56d37681a9bf"

  url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.12/FileUni-gui-#{arch}-macos-darwin.dmg"
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
