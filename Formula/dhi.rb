class Dhi < Formula
  desc "The agentic workspace IDE"
  homepage "https://github.com/drjzlyan/dhi"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.6.0/dhi_darwin_arm64.tar.gz"
      sha256 "5c691742d62d454d6e9feda0962cb47c222e6d369427647a13762549625e7c44"
    end
    on_intel do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.6.0/dhi_darwin_amd64.tar.gz"
      sha256 "4dcd22c45e7b056d9e1925ba9889d3b633a7f774d14767b89d1bb765e6da7c71"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.6.0/dhi_linux_arm64.tar.gz"
      sha256 "9dfb448d31dc820d964d816eb567cb94724caced8b08239da66cd4b22cfe6bc3"
    end
    on_intel do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.6.0/dhi_linux_amd64.tar.gz"
      sha256 "5774568d73e590cf565281626837520a055f085c224f44fafd7817f2490393b4"
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
