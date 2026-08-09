cask "tilde" do
  version "0.2.1"
  sha256 "8d6c47ee31d36a08d2c4f87c5170df38c53fa82e17648f0cdf3f63d7ef0a7e33"

  url "https://github.com/magalab/tilde/releases/download/v0.2.1/Tilde_#{version}_arm64.dmg"
  name "Tilde"
  desc "Native macOS text editor for plain text and Markdown"
  homepage "https://github.com/magalab/tilde"

  depends_on macos: :sequoia

  app "Tilde.app"
  binary "Tilde.app/Contents/Helpers/tilde"
end
