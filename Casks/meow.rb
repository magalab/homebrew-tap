cask "meow" do
  version "0.0.13"
  sha256 "c7f9b9e0a4e639f91b18ce17ecf2cc7415e4370ebb83dd4c0357af9fb313ba63"

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