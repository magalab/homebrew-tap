cask "meow" do
  version "0.0.9"
  sha256 "fec7a5a817493153104b6fe94c720fb27c771277810f8af200185ed057dfeb89"

  url "https://github.com/magalab/meow/releases/download/v#{version}/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "An app for macOS"
  homepage "https://github.com/magalab/meow"

  app "Meow.app"
end