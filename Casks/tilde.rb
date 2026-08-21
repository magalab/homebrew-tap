cask "tilde" do
  version "0.5.0"
  sha256 "ca5c5866a8855d8f3bedbedf33135daa294a132db41c88c5647a93d2d7840bb1"

  url "https://github.com/magalab/tilde/releases/download/v0.5.0/Tilde_#{version}_arm64.dmg"
  name "Tilde"
  desc "Native macOS text editor for plain text and Markdown"
  homepage "https://github.com/magalab/tilde"

  depends_on macos: :sequoia

  app "Tilde.app"
  binary "Tilde.app/Contents/Helpers/tilde"
end
