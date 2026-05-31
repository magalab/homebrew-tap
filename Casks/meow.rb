cask "meow" do
  version "0.0.5"
  sha256 "067c6c0cfe4115976bb3e5878f00dc3c8d34d65a1ac1420a0a9fb8dd543f71f5"

  url "https://github.com/magalab/meow/releases/download/v#{version}/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "An app for macOS"
  homepage "https://github.com/magalab/meow"

  app "Meow.app"
end