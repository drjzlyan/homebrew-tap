class Dhi < Formula
  desc "The agentic workspace IDE"
  homepage "https://github.com/drjzlyan/dhi"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.3.0/dhi_darwin_arm64.tar.gz"
      sha256 "af1b7baeffbc73371856fed26487061247b0716e55dff676595de3be2e049cf0"
    end
    on_intel do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.3.0/dhi_darwin_amd64.tar.gz"
      sha256 "c4f43cbf111999f06f84356781762e3bcbf07d8bd904f1fba97ee33b980fe5e1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.3.0/dhi_linux_arm64.tar.gz"
      sha256 "1f16227d49338a2311ee5026bd113c2682b1fc7dc61ad32c094f795fbe6dfff0"
    end
    on_intel do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.3.0/dhi_linux_amd64.tar.gz"
      sha256 "0af6e8743e350dc47da4846287d31b48868180f1b073429ab6cc440cba37a59f"
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
