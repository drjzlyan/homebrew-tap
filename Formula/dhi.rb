class Dhi < Formula
  desc "The agentic workspace IDE"
  homepage "https://github.com/drjzlyan/dhi"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.2.0/dhi_darwin_arm64.tar.gz"
      sha256 "670bf233b114f0fa47e3702d7cdb3ecf7b0971098285819e64d4f09552e76c8c"
    end
    on_intel do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.2.0/dhi_darwin_amd64.tar.gz"
      sha256 "e71f091ab09611bac9dfb959d60735e1eddb6710c82dac1351582def1b541b05"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.2.0/dhi_linux_arm64.tar.gz"
      sha256 "2011ad53a220855e41ea770f808af90b0a6b45041107e7e19035ac2bd9e3955b"
    end
    on_intel do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.2.0/dhi_linux_amd64.tar.gz"
      sha256 "ae5ef7eb813283b70ae77f4a7f364592a73c6ed7bda5c4578ffe4d49912be419"
    end
  end
  def install
    bin.install "dhi"
  end

  def caveats
    <<~EOS
      Run `dhi` in a project directory. On first run DHI downloads its own
      pinned toolchain under ~/.local/share/dhi and walks you through setup.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dhi version")
  end
end
