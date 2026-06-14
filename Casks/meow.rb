cask "meow" do
  version "0.0.12"
  sha256 "c8654248a4a3e16978d628b504fe721051d81f08760a243abd008ca822e95197"

  url "https://github.com/magalab/meow/releases/download/v#{version}/Meow_#{version}_arm64.dmg"
  name "Meow"
  desc "An app for macOS"
  homepage "https://github.com/magalab/meow"

  app "Meow.app"
end