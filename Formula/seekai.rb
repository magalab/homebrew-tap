class Seekai < Formula
  desc "Seek DB AI model, endpoint, and AI function CLI"
  homepage "https://github.com/magalab/seekai-cli"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/magalab/seekai-cli/releases/download/v0.2.0/seekai_darwin_arm64",
          using: :nounzip
      sha256 "3dfa98c32536c5c2df63509c3acf286cb1b6eb1d5b6c8af8180bc8778825288f"
    end

    on_intel do
      url "https://github.com/magalab/seekai-cli/releases/download/v0.2.0/seekai_darwin_amd64",
          using: :nounzip
      sha256 "4f05c10b62147b5345d7b872527afb5ee89aebf4667d71c9bf97b0622824f7a1"
    end
  end

  def install
    bin.install cached_download => "seekai"
  end

  test do
    assert_match "Usage: seekai", shell_output("#{bin}/seekai --help")
  end
end
