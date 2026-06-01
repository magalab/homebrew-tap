cask "meow" do
  version "0.0.7"
  sha256 "2a9794d876edca1dff46377bcbae869c8f68565863a91b0d31d030b463a19262"

  url "https://github.com/magalab/meow/releases/download/v#{version}/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "An app for macOS"
  homepage "https://github.com/magalab/meow"

  app "Meow.app"
end