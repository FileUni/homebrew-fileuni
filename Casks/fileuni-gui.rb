cask "fileuni-gui" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.1"
  sha256 arm: "415d6deae9a49abc5da7f7cf4ea0e356501f6bcde1bd35c0c00a3965a27a19d9", intel: "df17373df4175afb8d8600cb34e938a2245c42939cdfaf3c8ed150a637cb5d34"

  url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.1/FileUni-gui-#{arch}-macos-darwin.dmg"
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
