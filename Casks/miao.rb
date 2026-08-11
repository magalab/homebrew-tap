cask "miao" do
  version "0.0.23"
  sha256 "b9f8655ba3cb3ec35fc142a3b6b885ea6481a1efe2fdc8e0dd228b7b74c01f5a"

  url "https://github.com/magalab/meow/releases/download/v0.0.23/Miao_#{version}_arm64.dmg"
  name "Miao"
  desc "Meow voice edition with offline speech recognition and speech synthesis"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Miao.app"
end
