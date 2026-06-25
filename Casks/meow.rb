cask "meow" do
  version "0.0.18"
  sha256 "ede29dbed6b405ccbd482d50f3bfad02001058f45f4c06beaeed19e7b2ee6af7"

  url "https://github.com/magalab/meow/releases/download/v0.0.18/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "Lightweight macOS launcher with gadgets"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Meow.app"
end
