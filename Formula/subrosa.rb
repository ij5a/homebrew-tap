class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.28.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.28.0/subrosa-v0.28.0-aarch64-apple-darwin.tar.gz"
      sha256 "9f6de6bc6047e99e96cfb98ca7d2020abb6028f60a598f3d009615bc19bb4039"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.28.0/subrosa-v0.28.0-x86_64-apple-darwin.tar.gz"
      sha256 "7b928f66f160a72c4d61b0325d84f17a40454f787b4af53e6e52abf59e773ac2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.28.0/subrosa-v0.28.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bb4eb0b1fdce4fb6e7fc6e02078b8206a3f951e2f512f7cac7d0d4e0af812360"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.28.0/subrosa-v0.28.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3bca8342f56aca5ca2d9a669d21c9254f2b23657e0ca143442115f5b0215fcb6"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
