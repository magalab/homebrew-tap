cask "meow" do
  version "0.0.6"
  sha256 "2bd46dfb033b336c2cb8c3d29b3f602fbf7392d2ea05239368b28ca926f28fbd"

  url "https://github.com/magalab/meow/releases/download/v#{version}/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "An app for macOS"
  homepage "https://github.com/magalab/meow"

  app "Meow.app"
end