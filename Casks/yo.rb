cask "yo" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.2.2"
  sha256 arm:   "636e129fdf93b10695d7fc693a94fc1c038307419af0ca80988723ec8a838daf",
         intel: "1d35d815dcb330b807513418acc6ad99048d6f587e0f6312cc3d19150e27d773"

  url "https://github.com/magalab/yo/releases/download/v#{version}/Yo-#{arch}.dmg"
  name "Yo"
  desc "Native code editor with built-in coding agents"
  homepage "https://github.com/magalab/yo"

  depends_on :macos

  app "Yo.app"
  binary "/Applications/Yo.app/Contents/MacOS/cli", target: "yo"
end
