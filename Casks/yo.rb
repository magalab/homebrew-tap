cask "yo" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.19"
  sha256 arm: "e65dd115aea8bdfae1853304277f11bff09ca031fb339ee92317124ee34811f6", intel: "23dc85fc0a95aa97fd0ffd504be8a64a394fc71c74ff23d251bcc48df405faac"

  url "https://github.com/magalab/yo/releases/download/v#{version}/Yo-#{arch}.dmg"
  name "Yo"
  desc "Native code editor with built-in coding agents"
  homepage "https://github.com/magalab/yo"

  app "Yo.app"
  binary "/Applications/Yo.app/Contents/MacOS/cli", target: "yo"
end
