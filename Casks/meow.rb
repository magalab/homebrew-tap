cask "meow" do
  version "0.0.22"
  sha256 "492b682c0a62d7b067e4c2b286fb492dc51619c948861f6ed3d2a0b5c8a48273"

  url "https://github.com/magalab/meow/releases/download/v0.0.22/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "Lightweight macOS launcher with gadgets"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Meow.app"
end
