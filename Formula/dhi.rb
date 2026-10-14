class Dhi < Formula
  desc "The agentic workspace IDE"
  homepage "https://github.com/drjzlyan/dhi"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.4.0/dhi_darwin_arm64.tar.gz"
      sha256 "e3d0e21532a1a30692393206e1d1ecc12227850f8039fb862bde23047bab117a"
    end
    on_intel do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.4.0/dhi_darwin_amd64.tar.gz"
      sha256 "2d3c7ea6fc4328421492e95ff0923a201e0ec8f10242c15de009e6b9dbfa019a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.4.0/dhi_linux_arm64.tar.gz"
      sha256 "dc308d94154ca45922278f0fd745ea0204fa917b5ab70e300eb94999efd68c7e"
    end
    on_intel do
      url "https://github.com/drjzlyan/dhi/releases/download/v0.4.0/dhi_linux_amd64.tar.gz"
      sha256 "73dda32e4dfbf29776a1df77f390f76686ba20999e9d5bf38632fc9fefe86105"
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
