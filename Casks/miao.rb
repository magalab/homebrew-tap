cask "miao" do
  version "0.1.6"
  sha256 "460e2ad7cae9c82bd33dd23d2229e2015d36fa99501414b53219408d46f5c574"

  url "https://github.com/magalab/meow/releases/download/v0.1.6/Miao_#{version}_arm64.dmg"
  name "Miao"
  desc "Meow voice edition with offline speech recognition"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Miao.app"
end
