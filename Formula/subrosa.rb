class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.28.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.28.4/subrosa-v0.28.4-aarch64-apple-darwin.tar.gz"
      sha256 "7d889e479cb758fdb301ce5134c7e05391b047603da9fc6b14d02b2beb729cb9"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.28.4/subrosa-v0.28.4-x86_64-apple-darwin.tar.gz"
      sha256 "84722a235329db0d87eee8e4dc072d44ac9929ce232d2c47ed12dd57ab02204c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.28.4/subrosa-v0.28.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "76095ca14f7d511e20a3f62f2ad721e930380bd5b7bd5f9166f00b3657ae25a3"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.28.4/subrosa-v0.28.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "656191abc6c15c3ab7980469db9ff87494faf69337d11f8d3594cf9bdfc61c0b"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
