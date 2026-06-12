class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.4.0/subrosa-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "56f9068806effd4c5e7b0614399a0dc00ee176569ac3471711d24d4a1bf86bad"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.4.0/subrosa-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "54456c1d7f3c7b1183f12ccc0406a102c8c295a7fd46e1fa52efcc9e95799fb0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.4.0/subrosa-v0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6de4595eb506d3ea90a85554db80d858a7955273cb0dd049fb36c200bce73100"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.4.0/subrosa-v0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a7482830904531e6c4cd6eeadd4d05a9037a09509def6b6f2dc55485f485bc03"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
