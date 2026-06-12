class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.4.1/subrosa-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "f203bcea12062ed7c4b17293b6148b809c25c68b10e9ca4222492d2180e22880"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.4.1/subrosa-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "56c3d9ca0478b6dd080faa20a0d1d456028ee957f2de37c54641af20d77019e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.4.1/subrosa-v0.4.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "37b4601deb6b01c2360f90e1728d87cc6ff46a86796fce27709ec6256a530d37"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.4.1/subrosa-v0.4.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "38cb7e901dfbcacf498d664c86700d2da873189d0f23deb93e9b6d236848264f"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
