cask "meow" do
  version "0.0.11"
  sha256 "6516fda8ce2d3fb3e47f632a591468e03ed8aab4a2c6dddb8a9fbf9cf06b7b00"

  url "https://github.com/magalab/meow/releases/download/v#{version}/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "An app for macOS"
  homepage "https://github.com/magalab/meow"

  app "Meow.app"
end