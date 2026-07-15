cask "miao" do
  version "0.0.20"
  sha256 "6842f3a358fb53e229cea7ebc63755eab9dec26e77d9db0c25d6babae5b26120"

  url "https://github.com/magalab/meow/releases/download/v0.0.20/Miao_#{version}_arm64.dmg"
  name "Miao"
  desc "Meow voice edition with offline speech recognition and speech synthesis"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Miao.app"
end
