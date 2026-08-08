cask "tilde" do
  version "0.1.1"
  sha256 "0d311405134504e8470a61af6734256f969a925c20d6b9278e6da4111d362cc4"

  url "https://github.com/magalab/tilde/releases/download/v0.1.1/Tilde_#{version}_arm64.dmg"
  name "Tilde"
  desc "Native macOS text editor for plain text and Markdown"
  homepage "https://github.com/magalab/tilde"

  depends_on macos: :sequoia

  app "Tilde.app"
end
