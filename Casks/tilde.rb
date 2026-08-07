cask "tilde" do
  version "0.1.0"
  sha256 "abcd910117aff6d01bc2395cfb698fb49c81b49428b34ba05f7f455f198ef0e2"

  url "https://github.com/magalab/tilde/releases/download/v0.1.0/Tilde_#{version}_arm64.dmg"
  name "Tilde"
  desc "Native macOS text editor for plain text and Markdown"
  homepage "https://github.com/magalab/tilde"

  depends_on macos: :sequoia

  app "Tilde.app"
end
