cask "tilde" do
  version "0.3.0"
  sha256 "eafcd99cce5a3591d1ef4ea6a05f1eb5182513bb61c3e1e894ddd0a4ff5e9989"

  url "https://github.com/magalab/tilde/releases/download/v0.3.0/Tilde_#{version}_arm64.dmg"
  name "Tilde"
  desc "Native macOS text editor for plain text and Markdown"
  homepage "https://github.com/magalab/tilde"

  depends_on macos: :sequoia

  app "Tilde.app"
  binary "Tilde.app/Contents/Helpers/tilde"
end
