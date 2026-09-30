class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.29.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.29.0/subrosa-v0.29.0-aarch64-apple-darwin.tar.gz"
      sha256 "3d69acdc69cca7eea8956a9295e310390708153e74a4f9ebd41fc1681b3e666f"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.29.0/subrosa-v0.29.0-x86_64-apple-darwin.tar.gz"
      sha256 "17063bbb43fa56bb133568350b029906bc535eecc87027153b3f7edbe4393338"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.29.0/subrosa-v0.29.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0edf036ded79f067bb181ea604ed9c0c3ced1db95f71ede7299e22fa010fae9d"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.29.0/subrosa-v0.29.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ccacb625e57c85c0b05a9e8aaaacb8022b66cb59d59939363004e0b02fdaf5a6"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
