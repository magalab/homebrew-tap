cask "biu" do
  version "0.3.0"
  sha256 "7abfaf821e3a938b58413f087eb63c25eef9f0f286853f768a451712a67d1068"

  url "https://github.com/magalab/biu/releases/download/v#{version}/Biu_#{version}_arm64.dmg"
  name "Biu"
  desc "Native, local-first REST client"
  homepage "https://github.com/magalab/biu"

  depends_on macos: :sequoia

  app "Biu.app"
end
