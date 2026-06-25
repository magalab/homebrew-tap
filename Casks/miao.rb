cask "miao" do
  version "0.0.18"
  sha256 "b2786427aca5932117925cb2cbe9f58a483363c51f9acbf748fc4ffd7e38e047"

  url "https://github.com/magalab/meow/releases/download/v0.0.18/Miao_#{version}_arm64.dmg"
  name "Miao"
  desc "Meow voice edition with offline speech recognition and speech synthesis"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Miao.app"
end
