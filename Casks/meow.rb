cask "meow" do
  version "0.1.3"
  sha256 "e94007564d5b2e8347251a247c71342378cf5fed8c017e8829eda9941e64d4d4"

  url "https://github.com/magalab/meow/releases/download/v0.1.3/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "Lightweight launcher with gadgets"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Meow.app"
end
