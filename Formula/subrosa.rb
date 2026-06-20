class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.16.0/subrosa-v0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "91cb777b5ad0a324a8ece68b14a35f916b9aa2e5df0a7690f553addc8498a03c"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.16.0/subrosa-v0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "d7a9f39055503caf311348c5ecb3fa36e9f15872ad816ae3fb62eeaed090cacb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.16.0/subrosa-v0.16.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f35615d8dbca38d2b1a6bc51c927077742b81a4fef7d12e2f0038ee923a4f78d"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.16.0/subrosa-v0.16.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f7e16e9e7153a874ad901f8870d2fe29564b391b1f2a81f63b4257af8c620c79"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
