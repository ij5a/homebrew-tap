class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.28.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.28.1/subrosa-v0.28.1-aarch64-apple-darwin.tar.gz"
      sha256 "aececd81b0e6f3236e60a36506ff0a0ee99ec459a3b8ead044064fe15244d265"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.28.1/subrosa-v0.28.1-x86_64-apple-darwin.tar.gz"
      sha256 "3d81f93c372ad7fd34919f4cb1e184aae2a3262d5d839c2b2e239eeb69447a1e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.28.1/subrosa-v0.28.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e4c181d5164bed0afc5b15f39f5f1feb62822e2aad57fe4cde60d6cb8e5105af"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.28.1/subrosa-v0.28.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "43ef7bb71dd9c5a1aebf58fc35407e234287b3f6f3c4d3f0f85c15c4f7f65d2c"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
