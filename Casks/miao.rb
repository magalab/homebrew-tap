cask "miao" do
  version "0.1.4"
  sha256 "b246ca7204548ee36803d520dc8a91c88b4cfffee8f436e522b451c1bd182cee"

  url "https://github.com/magalab/meow/releases/download/v0.1.4/Miao_#{version}_arm64.dmg"
  name "Miao"
  desc "Meow voice edition with offline speech recognition"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Miao.app"
end
