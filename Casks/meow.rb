cask "meow" do
  version "0.0.25"
  sha256 "0bd7b8bcd860a446deed2aacf3171fb1f51055e14c4a9f1d380c2cce2b0b3f5c"

  url "https://github.com/magalab/meow/releases/download/v0.0.25/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "Lightweight macOS launcher with gadgets"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Meow.app"
end
