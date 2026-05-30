cask "meow" do
  version "0.0.4"
  sha256 "1083463cfcb3bf5ee1cf83c14b033ff2d01413ca64dc83e6a2843a80b0ef6ee0"

  url "https://github.com/magalab/meow/releases/download/v#{version}/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "An app for macOS"
  homepage "https://github.com/magalab/meow"

  app "Meow.app"
end