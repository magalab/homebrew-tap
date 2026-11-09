cask "yo" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.2.0"
  sha256 arm:   "6720a313b221e32ff970466cb911fc68389b6f24073df58db546248dce4eeef3",
         intel: "ef1ebe43860cf0d5a269dbc48f02f0a78a600dd18a1ccfd64052bd90e3860ae3"

  url "https://github.com/magalab/yo/releases/download/v#{version}/Yo-#{arch}.dmg"
  name "Yo"
  desc "Native code editor with built-in coding agents"
  homepage "https://github.com/magalab/yo"

  depends_on :macos

  app "Yo.app"
  binary "/Applications/Yo.app/Contents/MacOS/cli", target: "yo"
end
