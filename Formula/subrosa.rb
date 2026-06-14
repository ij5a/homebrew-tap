class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.8.1/subrosa-v0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "97b5c27f1e6c8a7e9701e5ff9dab5f265de05d26366459f42486ea4ed28a4b49"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.8.1/subrosa-v0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "87550e0af010587067a66d40f2e95bb44b808c9a8fe67512a48d4de31ea5bae7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.8.1/subrosa-v0.8.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6284b3ba04c4fc867ed3321dd5a1d9e3e210e9b194e4026534e150d6b71a3151"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.8.1/subrosa-v0.8.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "20d5af8265a406fe8dd673bb775f915d1c80e18523f48bb06f7a75d9d9d9d8b9"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
