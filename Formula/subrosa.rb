class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.17.0/subrosa-v0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "e9623f8083d9a0e2b436688cd8de27a566cf5df025b23a2d3403ab27bfc07a1c"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.17.0/subrosa-v0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "ec3fae390e324e3db734975cb2c8658e5504ff8f99e90c4ceed99d6acec640b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.17.0/subrosa-v0.17.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d6b37808f9460a9bf5c60b9d265c52a0326ade03d0584cd5c37d6f058079e5a7"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.17.0/subrosa-v0.17.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "598167fd800ff6434d3a90141f677bb12320b9d7c8111cc2d3936b02869068d2"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
