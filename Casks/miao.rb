cask "miao" do
  version "0.1.0"
  sha256 "c856699a6bc1ad769154bee74a9476e038ccfe9b5563632bc636fdb093a4e7f8"

  url "https://github.com/magalab/meow/releases/download/v0.1.0/Miao_#{version}_arm64.dmg"
  name "Miao"
  desc "Meow voice edition with offline speech recognition"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Miao.app"
end
