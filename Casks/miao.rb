cask "miao" do
  version "0.0.17"
  sha256 "36dd7e91e19fda8a04e79d24a3574239b399874bb578d6e4d43d3724a85deb4b"

  url "https://github.com/magalab/meow/releases/download/v#{version}/Miao_#{version}_arm64.dmg"
  name "Miao"
  desc "Miao app for macOS"
  homepage "https://github.com/magalab/meow"

  app "Miao.app"

  uninstall quit: "tech.lury.miao"

  zap trash: [
    "~/Library/Caches/tech.lury.miao",
    "~/Library/HTTPStorages/tech.lury.miao",
    "~/Library/Preferences/tech.lury.miao.plist",
    "~/Library/Saved Application State/tech.lury.miao.savedState",
  ]

  caveats do
    <<~EOS
      If macOS reports Miao.app is damaged, remove quarantine attributes manually:
        xattr -dr com.apple.quarantine /Applications/Miao.app
      Prefer opening once via System Settings > Privacy & Security when available.
    EOS
  end

  depends_on arch: :arm64

  livecheck do
    url :homepage
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)}i)
  end
end