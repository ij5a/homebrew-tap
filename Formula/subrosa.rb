class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.33.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.33.0/subrosa-v0.33.0-aarch64-apple-darwin.tar.gz"
      sha256 "ed814fde92fa2b06dc1d5a419d286eac2a82664ef0e4bf53fd8a03b696a9bcfe"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.33.0/subrosa-v0.33.0-x86_64-apple-darwin.tar.gz"
      sha256 "4f76079e719531019c5df39bf8cff02ab2d0acaeaa320ae5b7d273b310e6ac2a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.33.0/subrosa-v0.33.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5c8dfc3955c662a1faa463babc91940ff5eb36da42158171a8cba9df0daf991d"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.33.0/subrosa-v0.33.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1e9622d811e92b3306210d38c67b88cb712ed27ec13e35f5899a19413c8a8e34"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
