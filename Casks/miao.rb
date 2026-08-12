cask "miao" do
  version "0.0.24"
  sha256 "de5eceb9cb509fcbf8570db1cfee433e6d92013e65ddde37319597b218bebe73"

  url "https://github.com/magalab/meow/releases/download/v0.0.24/Miao_#{version}_arm64.dmg"
  name "Miao"
  desc "Meow voice edition with offline speech recognition and speech synthesis"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Miao.app"
end
