class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.1.0/subrosa-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "f6de96518cb8d8a1dfef5580fb816cc518b0c4c66188ab83d5f60176012a23e1"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.1.0/subrosa-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "367fa3e4c89e223ac67f6781f546e76efc2cd1713e0bab4abef1707809d1ee62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.1.0/subrosa-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8169ffc051b73d7f37b2939cd483d15fc85275bf8c9a3f849297231a33231d87"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.1.0/subrosa-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a4adc3372733620d6694bc99514af6caa072321c24887214657a77678651f9df"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
