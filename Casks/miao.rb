cask "miao" do
  version "0.1.1"
  sha256 "5f65feb816c126bdb2f905aab00dff13a1de7e0b89a4cfc8e3f1a11a232674ba"

  url "https://github.com/magalab/meow/releases/download/v0.1.1/Miao_#{version}_arm64.dmg"
  name "Miao"
  desc "Meow voice edition with offline speech recognition"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Miao.app"
end
