cask "fileuni-gui" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.7-alpha.3.20260412035005"
  sha256 arm: "494a8116949c1574fc5de956066f1bfbabc9c444050491a66b7b54885c3ee3e7", intel: "e24605f2dc359d0747ff00a796e432ecb26660049c015e0fd8c7dde8ca6d4542"

  url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.7-alpha.3_20260412035005/FileUni-gui-#{arch}-macos-darwin.dmg"
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
