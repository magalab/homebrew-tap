cask "tilde" do
  version "0.2.0"
  sha256 "a8f5a338c904c26e2c2696d8885daeaefcddc02a7883fa76e3fcd822ebc66004"

  url "https://github.com/magalab/tilde/releases/download/v0.2.0/Tilde_#{version}_arm64.dmg"
  name "Tilde"
  desc "Native macOS text editor for plain text and Markdown"
  homepage "https://github.com/magalab/tilde"

  depends_on macos: :sequoia

  app "Tilde.app"
  binary "Tilde.app/Contents/MacOS/tilde"
end
