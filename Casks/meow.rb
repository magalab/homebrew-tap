cask "meow" do
  version "0.0.26"
  sha256 "0399cc4e4da69e57887aa57576609c8b885c900e1c103eadd252a2ce76648de0"

  url "https://github.com/magalab/meow/releases/download/v0.0.26/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "Lightweight macOS launcher with gadgets"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Meow.app"
end
