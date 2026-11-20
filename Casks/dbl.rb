cask "dbl" do
  version "0.1.6"
  sha256 "a422904c65de0ae2c17a804e3f1e34d887dbfb354d16fbb3c84dcc73fa2ad623"

  url "https://github.com/magalab/dbl/releases/download/v#{version}/dbl-#{version}-arm64.dmg"
  name "DBL"
  desc "Native desktop database workbench"
  homepage "https://github.com/magalab/dbl"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "DBL.app"

  caveats <<~EOS
    DBL uses an ad-hoc signature and is not notarized by Apple. On first launch,
    macOS may block it. First allow DBL in System Settings > Privacy & Security.
    If macOS still reports the app as quarantined, remove the quarantine attribute:

      xattr -dr com.apple.quarantine /Applications/DBL.app

    This removes Gatekeeper's downloaded-file quarantine flag for DBL.app.
  EOS
end
