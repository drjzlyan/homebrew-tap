class Dhi < Formula
  desc "The agentic workspace IDE"
  homepage "https://github.com/drjzlyan/dhi"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.7.0/dhi_darwin_arm64.tar.gz"
      sha256 "11b11294c8d9a330cc66c23d307ae59212f7b5a29b8a3c087b5aebe998806cd5"
    end
    on_intel do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.7.0/dhi_darwin_amd64.tar.gz"
      sha256 "ab0409b565849046f4db401fda8c6df2934a6076788c64ae8cae839aedc09233"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.7.0/dhi_linux_arm64.tar.gz"
      sha256 "dc0051638136bd2a5454bdaee74f060ae8b372392b003a97c046d9a650de15e5"
    end
    on_intel do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.7.0/dhi_linux_amd64.tar.gz"
      sha256 "47a149d71f418dcc8ba7747b2442535362848674b05676adc93ff09d61341ca3"
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
