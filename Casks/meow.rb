cask "meow" do
  version "0.0.2"
  sha256 "sha256:6a768c5b7020de6cd94f61d1389614e75ca41e04a42a4629c9a8001bb9b09e36"

  url "https://github.com/magalab/meow/releases/download/v#{version}/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "An app for macOS"
  homepage "https://github.com/magalab/meow"

  app "Meow.app"
end