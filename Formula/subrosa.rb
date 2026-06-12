class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.2.1/subrosa-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "720d69f34a709daad07985d454d17eae79f314ee8f3b03e1aee83f34699639f7"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.2.1/subrosa-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "7dbc89040706928f5c88176d932b3af15dbc7f27d30a8a98dd67b98901c2451d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.2.1/subrosa-v0.2.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "516e2ef454130bdaaafaab900ce46bcf6240d2f92cd5799309c5bdb3932fa494"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.2.1/subrosa-v0.2.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aaeb213f13a25d4c96daa4754523479b68b95d1792d996ff0a86b51c5b0162c6"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
