cask "meow" do
  version "0.0.10"
  sha256 "5c58de5d191e4b8ea1c1623a2836deb5928e3ac80bcd1ed8a751513a195bb59d"

  url "https://github.com/magalab/meow/releases/download/v#{version}/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "An app for macOS"
  homepage "https://github.com/magalab/meow"

  app "Meow.app"
end