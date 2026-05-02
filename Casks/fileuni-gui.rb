cask "fileuni-gui" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.13"
  sha256 arm: "83382160270aff546fd54f9de8d33f206289659072e9296cb005be79c92b83ef", intel: "f792e0a2727eb5919616d797f813b56df364d267cb97e3a4f52f56affc400760"

  url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.13/FileUni-gui-#{arch}-macos-darwin.dmg"
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
