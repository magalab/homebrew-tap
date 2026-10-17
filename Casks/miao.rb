cask "miao" do
  version "0.1.3"
  sha256 "084fec6ec6480cca5ad6ab0ea181e30b24df7b8de449c2ec4f4f1a7d4051a097"

  url "https://github.com/magalab/meow/releases/download/v0.1.3/Miao_#{version}_arm64.dmg"
  name "Miao"
  desc "Meow voice edition with offline speech recognition"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Miao.app"
end
