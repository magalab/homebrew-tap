cask "alacritty" do
  version "0.17.0"
  sha256 "8599e8d3d6d078de33bb78d4c45b1179def41aa58dac03749884d4f770c6cac5"

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
