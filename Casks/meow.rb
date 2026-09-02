cask "meow" do
  version "0.0.27"
  sha256 "d8e75a1f86b8cf27cb3e67c27c572a6bf9d6bcb64474b3e191ddbd4bd0e6cc51"

  url "https://github.com/magalab/meow/releases/download/v0.0.27/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "Lightweight launcher with gadgets"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Meow.app"
end
