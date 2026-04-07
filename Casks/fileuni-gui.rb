cask "fileuni-gui" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.6-alpha.1.20260407083440"
  sha256 arm: "c03b3d188de0199c7120ec112498009aa8ec5d03c49f06ff90cc129449e1ac00", intel: "49dbece7a8f31b16f8e55f91441a440cb2c8326e5b6e55746811c5a8c1b5cf68"

  url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.6-alpha.1_20260407083440/FileUni-gui-#{arch}-macos-darwin.dmg"
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
