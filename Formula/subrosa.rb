class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.22.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.22.0/subrosa-v0.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "0a625d49d9f9a3112feb730a0d95730b3b3e4445c997a14cf19c338d18b868d7"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.22.0/subrosa-v0.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "6177a0398679065181ad437a42bfb643a0888dd30387499ca3b802bd67826934"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.22.0/subrosa-v0.22.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c85f3e9202cde1b11ccbce2d255f71655387d93b33c2b2c032b78b2269708eb0"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.22.0/subrosa-v0.22.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "293ce32a3701642d427b2a37f82844ab2fedb92fca846c5c9635d8740a01e788"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
