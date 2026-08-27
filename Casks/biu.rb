cask "biu" do
  version "0.1.0"
  sha256 "374a6064643f0ac074c80e3969cd14156ae737c7bd8b920504f965de5ef66c26"

  url "https://github.com/magalab/biu/releases/download/v#{version}/Biu_#{version}_arm64.dmg"
  name "Biu"
  desc "Native, local-first REST client for macOS"
  homepage "https://github.com/magalab/biu"

  depends_on macos: :sequoia

  app "Biu.app"
end
