class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.20.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.20.1/subrosa-v0.20.1-aarch64-apple-darwin.tar.gz"
      sha256 "7ad55e053ac745e2b1776695964381e901a399ac549a887c867a9682887d5d64"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.20.1/subrosa-v0.20.1-x86_64-apple-darwin.tar.gz"
      sha256 "a4dbe95dcf154a2a846bfaa9368a17feeaf53b741d8c1fcf301a7ac9d9e70496"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.20.1/subrosa-v0.20.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f0054a6d863a4334982eaa965ba6df694d48928c4187d7dc39e9c5d8172bc55f"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.20.1/subrosa-v0.20.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2e5c09abb21b6f4df06d122bd6a6ca4e70b5e506d1c37d36466b704d039d2a87"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
