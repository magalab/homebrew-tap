cask "alacritty" do
  version "0.17.0"
  sha256 "26c7e389b55769c6610aa445704817836e07c897c97795e441ae9951fb83247b"

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
