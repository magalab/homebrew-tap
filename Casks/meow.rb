cask "meow" do
  version "0.1.5"
  sha256 "afd558a73a537c9c3a3aa30ee2f703643e0eab41c3fc7d3c15db5d12b275d33d"

  url "https://github.com/magalab/meow/releases/download/v0.1.5/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "Lightweight launcher with gadgets"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Meow.app"
end
