class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.30.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.30.2/subrosa-v0.30.2-aarch64-apple-darwin.tar.gz"
      sha256 "94823547e225bcbf45e24f73cfd40ee980f2d896380ba8880aade50bebc53404"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.30.2/subrosa-v0.30.2-x86_64-apple-darwin.tar.gz"
      sha256 "c847431508fec81afc13c53ea06002221f8071eec2841f68c513ca206c7d781c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.30.2/subrosa-v0.30.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "69f5980e386640a5a5fc828fd55184b488373de86a9550ddd47201500ab1319e"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.30.2/subrosa-v0.30.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c442af54ac2602a8158cbc1676e990f15f5afa6b5fcfdbc9479f58f2d68b8da8"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
