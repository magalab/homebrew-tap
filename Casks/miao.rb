cask "miao" do
  version "0.0.26"
  sha256 "ae74e1b7937aedd240c729ba284999d0450bee760fd1dcb9059270a84428e996"

  url "https://github.com/magalab/meow/releases/download/v0.0.26/Miao_#{version}_arm64.dmg"
  name "Miao"
  desc "Meow voice edition with offline speech recognition and speech synthesis"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Miao.app"
end
