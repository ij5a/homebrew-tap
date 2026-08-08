class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.23.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.23.0/subrosa-v0.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "145ecb02f8c8438c40390ced769cac8dc3914289dd6f9eb6d88a11051434cd82"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.23.0/subrosa-v0.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "57aae34282b2992a263eefd058f63c642d1ba1c265208da25ef426c3a7b694d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.23.0/subrosa-v0.23.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2ccb304841fa7b695c70474896d1130a76800e2e3b8d2730d45ca020b7b2ad43"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.23.0/subrosa-v0.23.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e5e26580f9f643e910d9bc0bab7a42725055fe98e5c748fdc62873c90ad08c0a"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
