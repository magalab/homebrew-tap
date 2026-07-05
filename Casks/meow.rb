cask "meow" do
  version "0.0.19"
  sha256 "36b438292616d2def7c0466fa113ac21189eaba6d4a2f606af76af8af741c9ea"

  url "https://github.com/magalab/meow/releases/download/v0.0.19/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "Lightweight macOS launcher with gadgets"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Meow.app"
end
