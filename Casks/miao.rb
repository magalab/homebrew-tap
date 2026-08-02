cask "miao" do
  version "0.0.21"
  sha256 "90333e22e6cf3517f3a376a72d028add39a859ef515bf223f20a5ce1b4cb4071"

  url "https://github.com/magalab/meow/releases/download/v0.0.21/Miao_#{version}_arm64.dmg"
  name "Miao"
  desc "Meow voice edition with offline speech recognition and speech synthesis"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Miao.app"
end
