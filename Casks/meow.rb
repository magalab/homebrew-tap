cask "meow" do
  version "0.0.1"
  sha256 "581bd42f9891e54f3539fbe07ebd5fdc61eccfa0b1d85105ba4eb7b31842dfc0"

  url "https://github.com/magalab/meow/releases/download/v#{version}/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "An app for macOS"
  homepage "https://github.com/magalab/meow"

  app "Meow.app"
end