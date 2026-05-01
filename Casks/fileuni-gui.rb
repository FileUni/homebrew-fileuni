cask "fileuni-gui" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.12-alpha.3.20260502053403"
  sha256 arm: "13051c7fea43094baff547bb5bbdecbe8d02ca548b35b78cea14c5155bb10614", intel: "6f24be17d05f14accd9ff490e137d22f4d561626070ab100b824ce073a71b6fc"

  url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.12-alpha.3/FileUni-gui-#{arch}-macos-darwin.dmg"
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
