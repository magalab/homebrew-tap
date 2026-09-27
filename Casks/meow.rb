cask "meow" do
  version "0.0.29"
  sha256 "9f255f86c9d99f465a8a6b0df615e9333fdb9746dfc8e80659cebd3235dcefe4"

  url "https://github.com/magalab/meow/releases/download/v0.0.29/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "Lightweight launcher with gadgets"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Meow.app"
end
