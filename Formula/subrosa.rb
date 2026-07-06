class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.19.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.19.1/subrosa-v0.19.1-aarch64-apple-darwin.tar.gz"
      sha256 "de608c6e061051d7c27ce366c507e30f90e1ad79d0bcc1c8e549ad242305cbcb"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.19.1/subrosa-v0.19.1-x86_64-apple-darwin.tar.gz"
      sha256 "ec50b9a233de8cbf0ad54cd8b845d8c0cd9eb3e4a1f9a70cdda7bda0c35345f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.19.1/subrosa-v0.19.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "653e5c59db234bad95e28dfc60e86ddb069b902794a3cc0114c428d0542c5c25"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.19.1/subrosa-v0.19.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e2c318003f0b00f9c7c61df6b2428151013abceebab900af14ac72c58e8e5823"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
