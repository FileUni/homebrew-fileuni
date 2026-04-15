cask "fileuni-gui" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.10-alpha.1.20260415133208"
  sha256 arm: "2f215f37d0dcf6c40ecb8ab244ff9e83267208e8dfcbd819570e4ec21f86f6f6", intel: "36586cc3d3f0b6c99b8914b8048dba03b4e0f0d139e9d2d44b4874b10b2808d2"

  url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.10-alpha.1_20260415133208/FileUni-gui-#{arch}-macos-darwin.dmg"
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
