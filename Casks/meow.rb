cask "meow" do
  version "0.1.4"
  sha256 "65640426f21eb5d32aef73fe2915202fc1ccb3dc536a18dd206cfbf782905ffc"

  url "https://github.com/magalab/meow/releases/download/v0.1.4/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "Lightweight launcher with gadgets"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Meow.app"
end
