cask "biu" do
  version "0.2.0"
  sha256 "4d4e95572b0edbfb9f2b0b0df4ec924bf6b0dec3e2981946315b543391cc0570"

  url "https://github.com/magalab/biu/releases/download/v#{version}/Biu_#{version}_arm64.dmg"
  name "Biu"
  desc "Native, local-first REST client for macOS"
  homepage "https://github.com/magalab/biu"

  depends_on macos: :sequoia

  app "Biu.app"
end
