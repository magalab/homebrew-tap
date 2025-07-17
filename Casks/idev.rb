cask "idev" do
  version "0.0.2"

  on_arm do
    sha256 "52c739084c38437eeaa4c9a35630a9dff70d295a4b5f7a892878222b8822354a"
    url "https://github.com/magalab/idev/releases/download/v#{version}/idev-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "9a84e6bbb1106dca672366b2ec79b33379add5140b94011d852bb4bb3f4304a0"
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