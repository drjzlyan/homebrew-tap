class Dhi < Formula
  desc "The agentic workspace IDE"
  homepage "https://github.com/drjzlyan/dhi"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.5.1/dhi_darwin_arm64.tar.gz"
      sha256 "8a340b98970e5d981d8bdba4776f92de105cdad6eb8be8b0ccbc3c79c62320a3"
    end
    on_intel do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.5.1/dhi_darwin_amd64.tar.gz"
      sha256 "177f7df42ed6685ee0378aacd27f446d4e931b43de5387b1a1858a4ecaaa205f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.5.1/dhi_linux_arm64.tar.gz"
      sha256 "80d1406d75eddc2c585eb5a245d896218295e829cbe55fc65362425e0c99a2f6"
    end
    on_intel do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.5.1/dhi_linux_amd64.tar.gz"
      sha256 "e9e78b0874ccc662da78253bd1f5dceec35e83fc502afaca68d99fcf640e3b94"
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
