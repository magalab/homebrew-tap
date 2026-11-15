cask "miao" do
  version "0.1.5"
  sha256 "e86334ec18a3bed0e28538d90f7a73faf3a42f31b2d33eaacdc2a68673ce6898"

  url "https://github.com/magalab/meow/releases/download/v0.1.5/Miao_#{version}_arm64.dmg"
  name "Miao"
  desc "Meow voice edition with offline speech recognition"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Miao.app"
end
