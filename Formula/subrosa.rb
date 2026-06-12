class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.3.0/subrosa-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "b0a760e52af7e23877f06b95387a28fd023b962817f6508a511d42c628699911"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.3.0/subrosa-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "eb7476259a6eacceda9e7e7aece8aec813127d81c56a27cc1982454c4c56138f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.3.0/subrosa-v0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "302a908eddf581ce9c4b8df2233ffc3ee4eaf1a3815740639818381b579d110b"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.3.0/subrosa-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d3e281ff2908c72441ece4a80e1d2642bd4386e24a97a33d0747d7dd9c760922"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
