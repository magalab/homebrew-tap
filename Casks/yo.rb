cask "yo" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.20"
  sha256 arm: "e67df0fc80131b1672fcce2d51123f8704bebe71df9127fd371244661015a63e", intel: "2d3674a7610caac3d6e519c989a27eb6925d51b8111694b9bd0f2f3317fd1158"

  url "https://github.com/magalab/yo/releases/download/v#{version}/Yo-#{arch}.dmg"
  name "Yo"
  desc "Native code editor with built-in coding agents"
  homepage "https://github.com/magalab/yo"

  app "Yo.app"
  binary "/Applications/Yo.app/Contents/MacOS/cli", target: "yo"
end
