class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.18.0/subrosa-v0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "f1b02d9e992e19af1eb1cdffc53078e2ad320184cfaa06bf09cd07218ec9ac6b"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.18.0/subrosa-v0.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "bc79bb73374c6586fcf8e7512059ded5bb2a9b09b28e789a73a27fb57a5de98b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.18.0/subrosa-v0.18.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9879d9e48055e8b3d3d3ea2d806f8925b163984bdf560ca3a647239d2ddecf73"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.18.0/subrosa-v0.18.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "32795928b963df32837ac992e310b0220b8413a965c9f19446429e5ab0b62c67"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
