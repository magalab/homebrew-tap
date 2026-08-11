cask "meow" do
  version "0.0.23"
  sha256 "9308779daedb04580ce0beb3f6306ce04fc8c2acd871a0f5a34da4f6e9df2100"

  url "https://github.com/magalab/meow/releases/download/v0.0.23/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "Lightweight macOS launcher with gadgets"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Meow.app"
end
