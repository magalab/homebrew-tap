cask "miao" do
  version "0.0.19"
  sha256 "0fb7f61e629c3af577a3645a6829c92c4b9694c0b0bede5d86ab183db703ef64"

  url "https://github.com/magalab/meow/releases/download/v0.0.19/Miao_#{version}_arm64.dmg"
  name "Miao"
  desc "Meow voice edition with offline speech recognition and speech synthesis"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Miao.app"
end
