class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.25.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.25.0/subrosa-v0.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "2cd5d668bf50fd90abf2661d34ec7e70895db556ca234b80ebd7c04cf9fda97f"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.25.0/subrosa-v0.25.0-x86_64-apple-darwin.tar.gz"
      sha256 "cbfc3949dc940837d70544f8f326eeb584eb9120d349c5de2a46d324a87ecf26"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.25.0/subrosa-v0.25.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1bc4d98819da87278f681981cc69dd17b001f366e6418df3c5367e62fbfd3042"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.25.0/subrosa-v0.25.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a96e5c1a7a8eeef48c94cd4a20cb84be217ec9024c62a170f5c98e4f15429274"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
