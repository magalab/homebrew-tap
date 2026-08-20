cask "tilde" do
  version "0.4.0"
  sha256 "6161c90bada4d5371563d630b3bd0d5a1cd9d63908cedf4054ac8ba62b0af649"

  url "https://github.com/magalab/tilde/releases/download/v0.4.0/Tilde_#{version}_arm64.dmg"
  name "Tilde"
  desc "Native macOS text editor for plain text and Markdown"
  homepage "https://github.com/magalab/tilde"

  depends_on macos: :sequoia

  app "Tilde.app"
  binary "Tilde.app/Contents/Helpers/tilde"
end
