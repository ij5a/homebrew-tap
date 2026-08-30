class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.26.0/subrosa-v0.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "39ae450f7ba5d5b3decba159e1bc7dfd22b546688ad2589dde1f85d1bded0b7a"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.26.0/subrosa-v0.26.0-x86_64-apple-darwin.tar.gz"
      sha256 "a5cdb20dea1010ee3ae7f363b291c3326a9b6e8ace76b37fd9a9af367711cfba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.26.0/subrosa-v0.26.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a5d2bef4103ab819bde474b86199ee566f3a546f8cc50496e7ed489493e999eb"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.26.0/subrosa-v0.26.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "510ca433fd0d5f79e2a5cfcc04f2e0506c6c11f12c6e541cd010f0b5f6a27bac"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
