cask "codux" do
  version "2.0.4"

  on_arm do
    sha256 "6ae781a5a9c65630804198d8fc333d7a2c345c7ac455c3e615621d8dc8b83978"
    url "https://github.com/magalab/codux/releases/download/v#{version}/codux-macos-aarch64.dmg"
  end

  on_intel do
    sha256 "1b266c2271f0faec01bd76b5082abfe4aabc1bd371ad2be020f16a47c8706fb0"
    url "https://github.com/magalab/codux/releases/download/v#{version}/codux-macos-x86_64.dmg"
  end

  name "Codux"
  desc "Native terminal workspace for AI coding tools"
  homepage "https://github.com/magalab/codux"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Codux.app"

  zap trash: [
    "~/Library/Application Support/Codux",
    "~/Library/Caches/com.duxweb.codux",
    "~/Library/HTTPStorages/com.duxweb.codux",
    "~/Library/Preferences/com.duxweb.codux.plist",
    "~/Library/Saved Application State/com.duxweb.codux.savedState",
  ]
end
