class Zshx < Formula
  desc "Zsh syntax highlighting and responsive history suggestions"
  homepage "https://github.com/magalab/zshx"
  url "https://github.com/magalab/zshx.git",
      tag:      "v0.1.1",
      revision: "ec4706d8f706c6eff097ddb51747286d10b9449d"
  license "MIT"

  def install
    pkgshare.install "zshx.plugin.zsh", "zshx.zsh", "lib"
  end

  def caveats
    <<~EOS
      Add this line to your ~/.zshrc:
        source "#{opt_prefix}/share/zshx/zshx.plugin.zsh"

      zsh 5.9 or newer is required.
    EOS
  end

  test do
    assert_path_exists pkgshare/"zshx.plugin.zsh"
    assert_path_exists pkgshare/"lib/config.zsh"
  end
end
