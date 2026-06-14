class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.7.0/subrosa-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "4b77967c9ac3a27e443ecaa400347af1a1ef45b8e08963beca9c2048093ea9e4"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.7.0/subrosa-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "7849a24e1997ad3877c946665cf53082116251b288019a6efa4396067b947dc2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.7.0/subrosa-v0.7.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "28bd5b215ef0fbfdc0f2febeaf35de221e52351c3d793c6b2c97892b3fcd85dd"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.7.0/subrosa-v0.7.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5a5b13a81dbb5aa88048550f18d1a28256f3a93b6a3fbbeb353a9fdfcd3ab206"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
