class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.14.0/subrosa-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "54a7026ba34a96d76cb865b020910d1d398da11c1cc21adc71a2ce9dd03d94f2"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.14.0/subrosa-v0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "02c59913e31e165236770e683a9cdb9e3bf86808ae712a7b5324b1acebd28f1b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.14.0/subrosa-v0.14.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "98cfc52c6c10c21d1ac2f14414e963cbf48b4c1dceab666d10d61a643d184d76"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.14.0/subrosa-v0.14.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8d180d91a322f4242bd4e753eecaaac27413f7c004f1cb694fd57bb5e246cf11"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
