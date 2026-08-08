cask "tilde" do
  version "0.1.2"
  sha256 "07de90f9cd293c4375da8778625a08ec2c43f76e13555e199c5dd654a41cc3e9"

  url "https://github.com/magalab/tilde/releases/download/v0.1.2/Tilde_#{version}_arm64.dmg"
  name "Tilde"
  desc "Native macOS text editor for plain text and Markdown"
  homepage "https://github.com/magalab/tilde"

  depends_on macos: :sequoia

  app "Tilde.app"
end
