cask "biu" do
  version "0.2.1"
  sha256 "154b4edff1eb3a5141033b6525b91fbddbaadf21fa77e5fc01f34d606ef792ca"

  url "https://github.com/magalab/biu/releases/download/v#{version}/Biu_#{version}_arm64.dmg"
  name "Biu"
  desc "Native, local-first REST client for macOS"
  homepage "https://github.com/magalab/biu"

  depends_on macos: :sequoia

  app "Biu.app"
end
