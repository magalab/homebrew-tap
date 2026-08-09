cask "tilde" do
  version "0.1.3"
  sha256 "be715472e68b276018006e1add2d9fa252352c429bc92442d10f63caf4f6f4dc"

  url "https://github.com/magalab/tilde/releases/download/v0.1.3/Tilde_#{version}_arm64.dmg"
  name "Tilde"
  desc "Native macOS text editor for plain text and Markdown"
  homepage "https://github.com/magalab/tilde"

  depends_on macos: :sequoia

  app "Tilde.app"
end
