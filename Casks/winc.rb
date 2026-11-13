cask "winc" do
  version "0.1.626"
  sha256 "327e673dde2b3a72c9b68a30d7a839421d51e9cf72238edc813cdc76f28a6142"

  url "https://github.com/DEEIX-AI/Winc/releases/download/v#{version}/Winc-#{version}-macos-arm64.dmg"
  name "Winc"
  desc "Lighter, faster, more comfortable desktop editor"
  homepage "https://github.com/DEEIX-AI/Winc"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "winc.app"

  uninstall quit: "com.deeix.winc"

  zap trash: [
    "~/Library/Application Support/winc",
    "~/Library/Caches/com.deeix.winc",
    "~/Library/Preferences/com.deeix.winc.plist",
    "~/Library/Saved Application State/com.deeix.winc.savedState",
  ]
end
