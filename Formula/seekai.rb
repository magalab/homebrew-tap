class Seekai < Formula
  desc "Seek DB AI model, endpoint, and AI function CLI"
  homepage "https://github.com/magalab/seekai-cli"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/magalab/seekai-cli/releases/download/v0.2.0/seekai_darwin_arm64",
          using: :nounzip
      sha256 "3dfa98c32536c5c2df63509c3acf286cb1b6eb1d5b6c8af8180bc8778825288f"
    else
      url "https://github.com/magalab/seekai-cli/releases/download/v0.2.0/seekai_darwin_amd64",
          using: :nounzip
      sha256 "4f05c10b62147b5345d7b872527afb5ee89aebf4667d71c9bf97b0622824f7a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/magalab/seekai-cli/releases/download/v0.2.0/seekai_linux_arm64",
          using: :nounzip
      sha256 "50401d94b0dddf159e41a9d481afbbfb9b3bc6e58cb92915bfa9bac1ac051f30"
    else
      url "https://github.com/magalab/seekai-cli/releases/download/v0.2.0/seekai_linux_amd64",
          using: :nounzip
      sha256 "a0a1fa111bc2ffeeef62883dd780945c6ed866266866da19cb7e283d9921ba79"
    end
  end

  def install
    bin.install cached_download => "seekai"
  end

  test do
    assert_match "Usage: seekai", shell_output("#{bin}/seekai --help")
  end
end
