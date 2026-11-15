cask "tilde" do
  version "0.5.3"
  sha256 "c8fcf6b073e59b2dc5d766645e822b7987e231d0e3eeaf24e7306f1fc022b31d"

  url "https://github.com/magalab/tilde/releases/download/v0.5.3/Tilde_#{version}_arm64.dmg"
  name "Tilde"
  desc "Native text editor for plain text and Markdown"
  homepage "https://github.com/magalab/tilde"

  depends_on macos: :sequoia

  app "Tilde.app"
  binary "Tilde.app/Contents/Helpers/tilde"
end
