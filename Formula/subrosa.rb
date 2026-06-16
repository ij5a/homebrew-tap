class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.10.0/subrosa-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "89694f33c9c8e6903ca96f2df2a4638be4e3074b791192b408196cf6813f4d6c"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.10.0/subrosa-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "aa2302112e47f3f4c6b3b1284e066df6fc9839ef988d1831d591f73c553d98e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.10.0/subrosa-v0.10.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "10a15b32837f14e06bfd73a042931a2bcc75bccf7a19fa34205353e6d06b415e"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.10.0/subrosa-v0.10.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "74a0faa415e39032b212426c567444bf4a96b68811c58392322d87de37713335"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
