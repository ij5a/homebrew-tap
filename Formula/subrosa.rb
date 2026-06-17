class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.13.0/subrosa-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "2e4b6ec9c5b5601d9cd7caf164521abdb5d1187e1529228a2aced154419c8b9a"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.13.0/subrosa-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "9761177e87ad0f7242c8db00d60009dcd640fb4841e8372caff9efd54f8579e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.13.0/subrosa-v0.13.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cbc3c22da82ecdd9e7a7d3ce497ab071688f6fdf32f141ea65cbbdc0f8ae7104"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.13.0/subrosa-v0.13.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "95bf9a9bec6f56045393ea0d43a541a2b7607d644751a303584e50a744a25e98"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
