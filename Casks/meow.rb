cask "meow" do
  version "0.1.0"
  sha256 "ed93c38f84b232b0551272c9196432ce1d23518dbebf5b981ffa03092aeb891c"

  url "https://github.com/magalab/meow/releases/download/v0.1.0/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "Lightweight launcher with gadgets"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Meow.app"
end
