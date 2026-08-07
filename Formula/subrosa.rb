class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.21.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.21.0/subrosa-v0.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "7cb1d3a855341d5e14e4a927bda842d0a9a634b938bab72de9080cbb5317cd6e"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.21.0/subrosa-v0.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "cdc12c14512826d5e845db0eb6908378fba8f4f9f7e3a3f2b9d962a75b9ace62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.21.0/subrosa-v0.21.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "992664a98b8a8a887a21bad7d0bfb07f53c31db0576282bda41d86f8fdf401d0"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.21.0/subrosa-v0.21.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "099ca1262ca941881dd46d9438a51df9e5ef8233e610c63b40ee5c28b6350295"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
