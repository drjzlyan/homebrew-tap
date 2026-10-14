class Dhi < Formula
  desc "The agentic workspace IDE"
  homepage "https://github.com/drjzlyan/dhi"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.4.1/dhi_darwin_arm64.tar.gz"
      sha256 "cb0350fd4ab810a9178ff0966756be0a91eeaabcedb05292026f7c693418882a"
    end
    on_intel do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.4.1/dhi_darwin_amd64.tar.gz"
      sha256 "fdca3c814e7bbec9ec96ef4df8db06a8c80f8f286eba66f040959606ef0b1c3c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.4.1/dhi_linux_arm64.tar.gz"
      sha256 "89f6d0f2f1d84df562658bdad4c4d41a9a5fd1ff9dbd462ebb8ffb22db461914"
    end
    on_intel do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.4.1/dhi_linux_amd64.tar.gz"
      sha256 "5a4e33f12e732d26ae9ae26a278d5bc79273dc941c61b8d35d5e8cde9c4c4783"
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
