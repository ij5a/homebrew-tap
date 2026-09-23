class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.28.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.28.2/subrosa-v0.28.2-aarch64-apple-darwin.tar.gz"
      sha256 "32257e3e28964ed0958271a768eadb1a2e5fcb93ba3954ec167de6b3417cabc9"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.28.2/subrosa-v0.28.2-x86_64-apple-darwin.tar.gz"
      sha256 "5f034269a6a53adda8db8cd92a2ba8d4e9fb756a3d55aa6ed9ab6e8d350e2be2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.28.2/subrosa-v0.28.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "41f1a6c91473c5afbf2253014ed1380aec38d3fd6f2666a8f8487c9e5505b31f"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.28.2/subrosa-v0.28.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "67cbd20790ba81df216b462161aa4d057e2e7380cacb6f94224ab4d35bbe27b7"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
