class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.30.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.30.1/subrosa-v0.30.1-aarch64-apple-darwin.tar.gz"
      sha256 "5b5288bd15c68f5955cc5464509f6ed35f3f81e1245816bbff8f06ba90ae5ff2"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.30.1/subrosa-v0.30.1-x86_64-apple-darwin.tar.gz"
      sha256 "3329e4a2e8cb9de20dd76d3e59bdc32915a085ed0a1a3998fc252b13d18f8ba0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.30.1/subrosa-v0.30.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8b7436c25dc8516d5e166651e256f47ba96e8de62586038dba100d4023c13e49"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.30.1/subrosa-v0.30.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "14bd8a7a270dcbdcbc623daf7aa1217957e3d09a413a8e0fa0d1dade1c1a678c"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
