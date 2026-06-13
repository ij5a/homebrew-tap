class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.5.0/subrosa-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "038658086de83228bbc1c3112f76d8d7a45a915ab5c1050e9c526696057faaa8"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.5.0/subrosa-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "d73fce771a8ca8708c4c8258de8fa6ba5af48569fd375f4a61fb4394a2f3e374"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.5.0/subrosa-v0.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9a1e58f221dce8f922a2727ad7f559d99d0bd8fd7292c0191fd3fada338eedb5"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.5.0/subrosa-v0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fe94d67e02b0153712b09dc773482485f9c0138df32a64f16723b935f75271f4"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
