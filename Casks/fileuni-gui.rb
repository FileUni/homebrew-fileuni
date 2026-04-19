cask "fileuni-gui" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.10-alpha.3.20260419235940"
  sha256 arm: "d5de8b734b962c4715f1a6a9aec1d01e448e16dcf373a7622e02fa52ae1243ae", intel: "4c89e39b99e078eac9a09ca26a48e4d6ab5e41c5f04542d0bf2dccd37fad2214"

  url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.10-alpha.3_20260419235940/FileUni-gui-#{arch}-macos-darwin.dmg"
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
