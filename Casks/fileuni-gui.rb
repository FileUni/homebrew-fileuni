cask "fileuni-gui" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.0.0-alpha.1.20260329012348"
  sha256 arm: "6b0a3f0dd4b2d9774b5fcaf77d70012c6e8a78dd900dc2800b36e6d80cc78370", intel: "e14714d10a105fdb6b4598c3646c28220ed7d86fec0dcbb7472e6aa118be9c69"

  url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v1.0.0-alpha.1_20260329012348/FileUni-gui-#{arch}-macos-darwin.dmg"
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
