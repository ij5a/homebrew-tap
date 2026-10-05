class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.29.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.29.2/subrosa-v0.29.2-aarch64-apple-darwin.tar.gz"
      sha256 "4142c2dbccfc55eeb4b757e702bcb58d599e0fa5137f6ea03e853871024aa7c4"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.29.2/subrosa-v0.29.2-x86_64-apple-darwin.tar.gz"
      sha256 "b448efd7cff75b3184d2d22fae952aeb3aedb7676b39e8da4e15a681ea7a06da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.29.2/subrosa-v0.29.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f9c340e9bf24480cc398e5e15284ad56577d9703b536095c12227ec01c40e030"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.29.2/subrosa-v0.29.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8b8348f26ae3fa2872e9f7d9c53d2937896edcd69968ad2d8b3109aae3a3735c"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
