class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.28.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.28.3/subrosa-v0.28.3-aarch64-apple-darwin.tar.gz"
      sha256 "0448f4d21ecec14c1f57bc9df94bf33e563b4f0cdc379db1cbc308adf1ba147e"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.28.3/subrosa-v0.28.3-x86_64-apple-darwin.tar.gz"
      sha256 "5ede278dd208dcc423c5b543534ac335dcdd864a3619006536b4b75b14439e4b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.28.3/subrosa-v0.28.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7ecd18997e35b10cad36460896f7dfb3af9c9bd1a73d318fe55bc99c708a50ff"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.28.3/subrosa-v0.28.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0da17a8b33557fb0d66893f35910bd20ecd717cc6a22173d6d2cb2e3430d51be"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
