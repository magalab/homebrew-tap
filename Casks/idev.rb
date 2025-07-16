cask "idev" do
  version "0.0.1"

  on_arm do
    sha256 "4aec412073b9fcc5c8d3013d79c09f06c09a54d848a9b99ad9652689b0e9312e"
    url "https://github.com/magalab/idev/releases/download/v#{version}/idev-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "e4c7b9f68eaee21cfcd2e57fd9e626a08b5e55f5e1cd671f66f352e3e5fd68d0"
    url "https://github.com/magalab/idev/releases/download/v#{version}/idev-v#{version}-x86_64.dmg"
  end
  name "idev"
  desc "一堆工具"
  homepage "https://github.com/magalab/idev"

  app "idev.app"
  depends_on macos: ">= :monterey"
  livecheck do
    url :homepage
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)}i)
  end
end