cask "fileuni-gui" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.9"
  sha256 arm: "fc52632e2f0261ad2f5d8984bf7b3adf2346710748dcb75fe0a56a0f2133d137", intel: "3af51fdf54d9ba8fd98e60d06151b51a8c1a10f8ad44e7a59d9d4cc4336b487c"

  url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.9/FileUni-gui-#{arch}-macos-darwin.dmg"
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
