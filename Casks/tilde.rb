cask "tilde" do
  version "0.5.2"
  sha256 "ee381f4fe451d8ab4732dd446b19ed4fda544975331948075a2ca56adc11051d"

  url "https://github.com/magalab/tilde/releases/download/v0.5.2/Tilde_#{version}_arm64.dmg"
  name "Tilde"
  desc "Native text editor for plain text and Markdown"
  homepage "https://github.com/magalab/tilde"

  depends_on macos: :sequoia

  app "Tilde.app"
  binary "Tilde.app/Contents/Helpers/tilde"
end
