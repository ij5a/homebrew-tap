class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.12.0/subrosa-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "62825cccdf5d0224018869a2a0f6e14e1392fdf412943178cf4eeb8fd173744b"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.12.0/subrosa-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "0ccfffb04fe3608992f94c43223a9d1599c8a30ac0a93b8a1479cee161ca7da7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.12.0/subrosa-v0.12.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c08b4300ff657de699855994c0cd558f314391bc53f681f8effc67e8bf18d7aa"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.12.0/subrosa-v0.12.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "71d3c8ad77145d1f197f7d218371f782163f6ad3646c04a806ef0b3aefe26120"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
