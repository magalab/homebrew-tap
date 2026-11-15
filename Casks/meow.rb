cask "meow" do
  version "0.1.6"
  sha256 "1bf10e8767c7312bf0e7ab95f7783f0fc507ffa59c5470e659933eab4ce1158a"

  url "https://github.com/magalab/meow/releases/download/v0.1.6/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "Lightweight launcher with gadgets"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Meow.app"
end
