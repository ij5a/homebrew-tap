class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.15.0/subrosa-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "eed2cf5caa2a32cfd00551ce97327e252991bcac522d1eb8b6197a60720e3a8a"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.15.0/subrosa-v0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "022ba4cc1eda1bdbc1e2633133777606c447937c9b03bb730160b4165efa96aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.15.0/subrosa-v0.15.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "927a92abded5c7a90186cf93c6e8986a094f145db9775216effe58339504fb70"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.15.0/subrosa-v0.15.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "afbffa4beb9979055ef3b0cc0f12d75f0f89abeef49c3258383f7fc79b7c9a91"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
