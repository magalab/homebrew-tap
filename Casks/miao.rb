cask "miao" do
  version "0.0.22"
  sha256 "a4b86c331ddecb9c70c035bde2890500824667f3e3b65b5b5d876f02af7a41e9"

  url "https://github.com/magalab/meow/releases/download/v0.0.22/Miao_#{version}_arm64.dmg"
  name "Miao"
  desc "Meow voice edition with offline speech recognition and speech synthesis"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Miao.app"
end
