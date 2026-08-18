cask "miao" do
  version "0.0.25"
  sha256 "cbeb555bbfa7d7350ee70b7b8a5974c4caa64e7bdfd52d18112bc78578fdd64d"

  url "https://github.com/magalab/meow/releases/download/v0.0.25/Miao_#{version}_arm64.dmg"
  name "Miao"
  desc "Meow voice edition with offline speech recognition and speech synthesis"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Miao.app"
end
