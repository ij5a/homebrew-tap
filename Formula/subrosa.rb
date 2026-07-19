class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.20.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.20.0/subrosa-v0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "4d9d69da307fc7f8c0c26c049b3c21fcd6575605935e8d29ac7f8ee97c588fc6"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.20.0/subrosa-v0.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "fcd6f1e3f1787ff82bf4206cef9b2cfe64bb6770e0b74dcf2e4395bbbc6cc231"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.20.0/subrosa-v0.20.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "776f82efe3fae8c6b0c48f62397901b03145e1e2c7d08c0b4cde0065258a2afd"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.20.0/subrosa-v0.20.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "10dc66627b075fe326b584c35380ddc0c8859caaa8a20385169501fc82935bf3"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
