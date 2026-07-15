cask "meow" do
  version "0.0.20"
  sha256 "a3d473f50b8f5468c78af537aa5ea7a2f27a2729e3ef4c5348961a9cd92e6ae9"

  url "https://github.com/magalab/meow/releases/download/v0.0.20/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "Lightweight macOS launcher with gadgets"
  homepage "https://github.com/magalab/meow"

  depends_on macos: :sequoia

  app "Meow.app"
end
