cask "meow" do
  version "0.0.8"
  sha256 "a49cc4a23cbf444e538eed1dfc240df04bae36497f6e0094adb6c50405907f51"

  url "https://github.com/magalab/meow/releases/download/v#{version}/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "An app for macOS"
  homepage "https://github.com/magalab/meow"

  app "Meow.app"
end