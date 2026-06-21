class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.19.0/subrosa-v0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "32f6dde3c810f9fa3b1725f0a08656ca5f285d41d9d683c0bf538eac721e7eb4"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.19.0/subrosa-v0.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "37278d686c6d4e5d023b7c6e1f9357779fdd7d1a925a76f3d0a20298b999b818"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.19.0/subrosa-v0.19.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9def3bd86363df4ac7ebec8c4ab66df6d8aff508c2e6f8e8d1b0d163cf5cd867"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.19.0/subrosa-v0.19.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "76e8b60e3c749ca131314308d1d33996aaa51915d6cddb1df1b6f04607eb5467"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
