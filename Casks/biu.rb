cask "biu" do
  version "0.1.1"
  sha256 "e54ea8282060a1f9d0d207bb8024294e0a97e9b066418f26ba8a6cde960ec36e"

  url "https://github.com/magalab/biu/releases/download/v#{version}/Biu_#{version}_arm64.dmg"
  name "Biu"
  desc "Native, local-first REST client for macOS"
  homepage "https://github.com/magalab/biu"

  depends_on macos: :sequoia

  app "Biu.app"
end
