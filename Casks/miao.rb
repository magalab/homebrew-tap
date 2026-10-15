cask "miao" do
  version "0.1.2"
  sha256 "333a6a9fdf949a23c3c71924da70e8573d37b7b927324ccb329392b7302b3d92"

  url "https://github.com/magalab/meow/releases/download/v0.1.2/Miao_#{version}_arm64.dmg"
  name "Miao"
  desc "Meow voice edition with offline speech recognition"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Miao.app"
end
