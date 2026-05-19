cask "meow" do
  version "0.0.3"
  sha256 "a50c06c9cc324c213c06d3d8b3d2fc29e8eb7f3f56cb877227536ed73ace0b64"

  url "https://github.com/magalab/meow/releases/download/v#{version}/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "An app for macOS"
  homepage "https://github.com/magalab/meow"

  app "Meow.app"
end