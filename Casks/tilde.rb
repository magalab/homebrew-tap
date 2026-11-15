cask "tilde" do
  version "0.5.3"
  sha256 "60cfd5b0b41a58e4b52a87e1461cb4c1d657fce7da32d6cac5f3f1f564db617b"

  url "https://github.com/magalab/tilde/releases/download/v0.5.3/Tilde_#{version}_arm64.dmg"
  name "Tilde"
  desc "Native text editor for plain text and Markdown"
  homepage "https://github.com/magalab/tilde"

  depends_on macos: :sequoia

  app "Tilde.app"
  binary "Tilde.app/Contents/Helpers/tilde"
end
