class Dhi < Formula
  desc "The agentic workspace IDE"
  homepage "https://github.com/drjzlyan/dhi"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.5.0/dhi_darwin_arm64.tar.gz"
      sha256 "b4d5d7e1b8979837821fe12cea8b3cb00327b51cc97e825c670406834510ec5b"
    end
    on_intel do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.5.0/dhi_darwin_amd64.tar.gz"
      sha256 "2568b5d551f5495e41d32962b6053fb568b797ea5e664af5ab63c5781f4afb6d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.5.0/dhi_linux_arm64.tar.gz"
      sha256 "1019682680eb3b9ed89b2b12e5868e8ffd1c3203985a821e16add1a7158a5533"
    end
    on_intel do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.5.0/dhi_linux_amd64.tar.gz"
      sha256 "6d54891122e612f0e4e3d1b2be6f87b471f7ddcabc778c7bfe49df8d25c1efc1"
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
