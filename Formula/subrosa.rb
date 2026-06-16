class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.11.0/subrosa-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "de38de2e86acc2fc0dd0897e1c35f1097c216c81d5dde345af30f67c7fdfe58d"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.11.0/subrosa-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "68ffe7dce9243b5cc2270cc1f52e223d9f82e0489f2c2621970d3ca7a29d5690"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.11.0/subrosa-v0.11.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9b959b23a0fc5e72afd5a70c0d6ca3d48bb7d2e8799c74b9b9fa0f3f6f9a1a4a"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.11.0/subrosa-v0.11.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8386812ec4d28e8466783821fb03da078ea62606d87df30bdac05b9db87946a8"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
