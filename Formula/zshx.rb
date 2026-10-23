class Zshx < Formula
  desc "Zsh syntax highlighting and asynchronous history suggestions"
  homepage "https://github.com/magalab/zshx"
  url "https://github.com/magalab/zshx.git",
      tag:      "v0.1.0",
      revision: "f1b4d45f6ce66288a10dab479fac44a7bb43363c"
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
