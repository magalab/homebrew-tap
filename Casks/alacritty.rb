cask "alacritty" do
  version "0.17.0"
  sha256 "5dc68d04e5369fa26f5a5a82d31eaadc66c7b377a168aa2044afc67a841f8bd6"

  url "https://github.com/magalab/alacritty/releases/download/v#{version}/Alacritty-v#{version}.dmg"
  name "Alacritty"
  desc "Fast, cross-platform, OpenGL terminal emulator"
  homepage "https://github.com/magalab/alacritty"

  livecheck do
    url :homepage
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)}i)
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Alacritty.app"
  binary "Alacritty.app/Contents/MacOS/alacritty"

  uninstall quit: "org.alacritty"

  zap trash: [
    "~/.alacritty.toml",
    "~/.config/alacritty",
    "~/Library/Saved Application State/org.alacritty.savedState",
  ]
end
