class Dhi < Formula
  desc "The agentic workspace IDE"
  homepage "https://github.com/drjzlyan/dhi"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.6.1/dhi_darwin_arm64.tar.gz"
      sha256 "6c116002254d928e3bbca4424bc555e250339e75d98e4b57839fba7fe9cc49ad"
    end
    on_intel do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.6.1/dhi_darwin_amd64.tar.gz"
      sha256 "98180bb86706ee962503fbbb575932dcef1ae6083932dabd07957b7a099a4635"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.6.1/dhi_linux_arm64.tar.gz"
      sha256 "de1383ae4bf65f63f9bc9ffd3739574e3331d2e2f5d326fa00f2e1202eeb2819"
    end
    on_intel do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.6.1/dhi_linux_amd64.tar.gz"
      sha256 "0627439a3b153133cacbce5c45958b5544ef9f00eec0ab0dbd0dd6e20a70cc0a"
    end
  end
  def install
    bin.install "dhi"
  end

  def caveats
    <<~EOS
      Run `dhi` in a project directory. DHI uses the tools on your system
      (git, language servers, coding CLIs) and walks you through setup.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dhi version")
  end
end
