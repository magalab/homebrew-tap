cask "meow" do
  version "0.0.17"
  sha256 "03c39d8d6653067f300853e4b94ad0c0f0c58531b4c4840b338d5af9d4e003f1"

  url "https://github.com/magalab/meow/releases/download/v#{version}/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "Meow app for macOS"
  homepage "https://github.com/magalab/meow"

  app "Meow.app"

  uninstall quit: "tech.lury.meow"

  zap trash: [
    "~/Library/Caches/tech.lury.meow",
    "~/Library/HTTPStorages/tech.lury.meow",
    "~/Library/Preferences/tech.lury.meow.plist",
    "~/Library/Saved Application State/tech.lury.meow.savedState",
  ]

  caveats do
    <<~EOS
      If macOS reports Meow.app is damaged, remove quarantine attributes manually:
        xattr -dr com.apple.quarantine /Applications/Meow.app
      Prefer opening once via System Settings > Privacy & Security when available.
    EOS
  end

  depends_on arch: :arm64

  livecheck do
    url :homepage
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)}i)
  end
end