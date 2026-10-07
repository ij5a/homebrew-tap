class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.30.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.30.0/subrosa-v0.30.0-aarch64-apple-darwin.tar.gz"
      sha256 "4232bd3d58bdfb6b5e0420e31496dfe1f7d4702c73a533d0707dc1e9ffa157c2"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.30.0/subrosa-v0.30.0-x86_64-apple-darwin.tar.gz"
      sha256 "eddfb344377cf11a3a2126fa4557fee61bacfd812cb8b594be8467744220fab5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.30.0/subrosa-v0.30.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "895d9f72b52796bd6961ea106b7f1bae4cd8034044d2609a029f2f524316429c"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.30.0/subrosa-v0.30.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "743d64f99bf479231097f4109e82f642c92ef6e22bafa35ada725892ca9116ec"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
