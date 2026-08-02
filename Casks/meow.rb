cask "meow" do
  version "0.0.21"
  sha256 "222507c48a48fc6f449b252557bb65423e0f34c50be29759fc38a34463950124"

  url "https://github.com/magalab/meow/releases/download/v0.0.21/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "Lightweight macOS launcher with gadgets"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Meow.app"
end
