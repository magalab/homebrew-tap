cask "miao" do
  version "0.0.30"
  sha256 "177326bcf4e818768cb527e124f95a42f1d1222ebd50a727dff748a54c4522eb"

  url "https://github.com/magalab/meow/releases/download/v0.0.30/Miao_#{version}_arm64.dmg"
  name "Miao"
  desc "Meow voice edition with offline speech recognition"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Miao.app"
end
