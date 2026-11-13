class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.32.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.32.0/subrosa-v0.32.0-aarch64-apple-darwin.tar.gz"
      sha256 "64debefee0e00f7c12b19e786771b152ed0a073ef3cd0a9cc1e303273c60e4d3"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.32.0/subrosa-v0.32.0-x86_64-apple-darwin.tar.gz"
      sha256 "284231fa5c707715d1f8b1781d87fc461ce7f183fc9cabf104aad92c48cde488"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.32.0/subrosa-v0.32.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "74c17e6c89049c92c5f91920c0142bd83fab6d3c6ede4b32bc5410379219f1d1"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.32.0/subrosa-v0.32.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8f7102939885452acea5d2d09c4e08eb96efe36ffdfbfe9bcd45fa1e82690d92"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
