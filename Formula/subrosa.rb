class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.31.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.31.0/subrosa-v0.31.0-aarch64-apple-darwin.tar.gz"
      sha256 "1bd68c3b29a5cd46758aa09279356c885b91a63cd871ca1d400e7afb2db1041d"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.31.0/subrosa-v0.31.0-x86_64-apple-darwin.tar.gz"
      sha256 "1bec77b6aee26c588746abf7adfea233058b2d8be2503cfb273805f28e9f0d6a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.31.0/subrosa-v0.31.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "adcc528d6ba959924e9e3b7dc91e6cc04f3bbd7dec744e1d266000d2c07a30f1"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.31.0/subrosa-v0.31.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e7a917f4ba8b6e18ef808c4a5564df06a86b80c2a4aee97913f1ace01bf55a60"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
