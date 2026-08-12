cask "meow" do
  version "0.0.24"
  sha256 "fb71ecfdef463a0934a10bf986b2de911578932c58f9ab64aad6782538b2397b"

  url "https://github.com/magalab/meow/releases/download/v0.0.24/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "Lightweight macOS launcher with gadgets"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Meow.app"
end
