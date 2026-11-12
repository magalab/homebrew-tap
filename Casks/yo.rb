cask "yo" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.2.1"
  sha256 arm:   "fdd175926ca5d06f3b22733967ca730fe3f8ae1d8ccdcab3bd15606a73fa1def",
         intel: "220eb7738fc7423eb5cb2713b6f0f31d6c1bf0dcf1ddcc01882584c358db5fe1"

  url "https://github.com/magalab/yo/releases/download/v#{version}/Yo-#{arch}.dmg"
  name "Yo"
  desc "Native code editor with built-in coding agents"
  homepage "https://github.com/magalab/yo"

  depends_on :macos

  app "Yo.app"
  binary "/Applications/Yo.app/Contents/MacOS/cli", target: "yo"
end
