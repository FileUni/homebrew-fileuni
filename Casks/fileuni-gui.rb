cask "fileuni-gui" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.0.0-alpha.3.20260329030521"
  sha256 arm: "a8dd6fff6cb469fa715eda132c10766ae8c522501727a5948a233f66a689613e", intel: "115bd86be35e14104926f27c3e19c11a7c649d3281db86e2b5bbfa0fdd458548"

  url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v1.0.0-alpha.3_20260329030521/FileUni-gui-#{arch}-macos-darwin.dmg"
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
