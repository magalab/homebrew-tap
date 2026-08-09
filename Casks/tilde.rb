cask "tilde" do
  version "0.1.4"
  sha256 "ae554646cf930932d6d43f56f7e4166e30d7ece9e50f11f74f91605cad993195"

  url "https://github.com/magalab/tilde/releases/download/v0.1.4/Tilde_#{version}_arm64.dmg"
  name "Tilde"
  desc "Native macOS text editor for plain text and Markdown"
  homepage "https://github.com/magalab/tilde"

  depends_on macos: :sequoia

  app "Tilde.app"
end
