cask "dbl" do
  version "0.1.3"
  sha256 "a2b849b1b75845571c4cb3a8800dd281b7a03385d9f24947dbd8a260e876e8bd"

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
