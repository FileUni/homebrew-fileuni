cask "fileuni-gui" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.8-alpha.1.20260412224510"
  sha256 arm: "31d7583a81633fb52529f88da33dfbe71947d61a6fab5b53474f05606ad9c5eb", intel: "12c95adc3ba2529f3523caba7447b39eb1c8832df3d715698798f89c19d5a6c2"

  url "https://github.com/FileUni/FileUni-Project/releases/download/FileUni-v0.1.8-alpha.1_20260412224510/FileUni-gui-#{arch}-macos-darwin.dmg"
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
