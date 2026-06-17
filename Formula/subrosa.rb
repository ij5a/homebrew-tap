class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.12.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.12.1/subrosa-v0.12.1-aarch64-apple-darwin.tar.gz"
      sha256 "da0e06738954a2757478d75d8fec0dbcd9707e37c5e0f970c39bed5c5b7d9711"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.12.1/subrosa-v0.12.1-x86_64-apple-darwin.tar.gz"
      sha256 "6d957e798e2726de2f8db02e60fa70f001b2c4b18af9cc7a22fe61250e79c91e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.12.1/subrosa-v0.12.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "08afd092cea3db3fd258dd18ef9c1141d8b4913aa8573b1d28877de6d7093a68"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.12.1/subrosa-v0.12.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7e3de092d2161f758293d6be8339f881f9eec0b44e64631e89da91c0efdc0dbf"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
