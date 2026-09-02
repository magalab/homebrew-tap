cask "tilde" do
  version "0.5.1"
  sha256 "8233ce863ba8fff53b64d94497e9988ded82a6a204f73445ba94aafa58042e70"

  url "https://github.com/magalab/tilde/releases/download/v0.5.1/Tilde_#{version}_arm64.dmg"
  name "Tilde"
  desc "Native text editor for plain text and Markdown"
  homepage "https://github.com/magalab/tilde"

  depends_on macos: :sequoia

  app "Tilde.app"
  binary "Tilde.app/Contents/Helpers/tilde"
end
