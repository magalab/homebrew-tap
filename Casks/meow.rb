cask "meow" do
  version "0.1.2"
  sha256 "d1f4765dd7afe65e275b09f5827feb6fd0ead0c8f0b327028afd8d4e646b4b4d"

  url "https://github.com/magalab/meow/releases/download/v0.1.2/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "Lightweight launcher with gadgets"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Meow.app"
end
