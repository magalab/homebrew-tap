cask "miao" do
  version "0.0.29"
  sha256 "2a3c9541731b6624c15a491659ddc8c03d4800707a691f3c896ebfcb9b3135c9"

  url "https://github.com/magalab/meow/releases/download/v0.0.29/Miao_#{version}_arm64.dmg"
  name "Miao"
  desc "Meow voice edition with offline speech recognition"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Miao.app"
end
