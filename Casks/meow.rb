cask "meow" do
  version "0.1.1"
  sha256 "c54fd66fe9e74baad2bdd5675da81d2be8866ec7a4ee5b20da6af7c922078b2e"

  url "https://github.com/magalab/meow/releases/download/v0.1.1/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "Lightweight launcher with gadgets"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Meow.app"
end
