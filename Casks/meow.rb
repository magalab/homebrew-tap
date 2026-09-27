cask "meow" do
  version "0.0.30"
  sha256 "e564ad530d1e5571241d46a89a025863f62bfab563c49bbe4cff2fab9bbeb6ac"

  url "https://github.com/magalab/meow/releases/download/v0.0.30/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "Lightweight launcher with gadgets"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Meow.app"
end
