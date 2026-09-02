cask "miao" do
  version "0.0.27"
  sha256 "83e72324dcf382aaac2e0ad1b7bf95fe59b6bf8eeab40e7d05d207889f238f6f"

  url "https://github.com/magalab/meow/releases/download/v0.0.27/Miao_#{version}_arm64.dmg"
  name "Miao"
  desc "Meow voice edition with offline speech recognition and speech synthesis"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Miao.app"
end
