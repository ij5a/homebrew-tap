class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.2.0/subrosa-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "192624456e421d4917056b141777de76aed6745af9fa4110824e063fb0e7340d"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.2.0/subrosa-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "fb2f365c95f301c615f4f5fb42a592d2bf2ee55935d1b6021a6f3028a2252b21"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.2.0/subrosa-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b7a2aef63b4f71a9ed0304d04f5cffdfcd518bd3e6a46490e60a42271a418702"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.2.0/subrosa-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "06647a6484f11f70c7e1e2f817fe35bd051315d81de672267a766c9552f19423"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
