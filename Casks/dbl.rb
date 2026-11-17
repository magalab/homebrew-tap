cask "dbl" do
  version "0.1.1"
  sha256 "430ab26d5e39357cde4c7e0e90524da9ac9fd6c30b440e66c14c4a660ecfad2e"

  url "https://github.com/magalab/dbl/releases/download/v#{version}/dbl-#{version}-arm64.dmg"
  name "DBL"
  desc "Native desktop database workbench"
  homepage "https://github.com/magalab/dbl"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "DBL.app"
end
