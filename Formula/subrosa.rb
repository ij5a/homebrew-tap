class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.19.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.19.2/subrosa-v0.19.2-aarch64-apple-darwin.tar.gz"
      sha256 "25406bebd755b60be4e841a01ba5752b1617a88517805545770994ce13d1982d"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.19.2/subrosa-v0.19.2-x86_64-apple-darwin.tar.gz"
      sha256 "6ae1ce6ae1f10bfb2e60b20f889fef94fa43a6d809e974b0c56f7fa0938d7bac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.19.2/subrosa-v0.19.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "598094ec6356bc185e73151f71aa7487d7aeeb39a04100acc615757f97279f12"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.19.2/subrosa-v0.19.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e0bd2f6230aa143c4ed64f741d2c3c1c470335efe772118dc011672976ab43d4"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
