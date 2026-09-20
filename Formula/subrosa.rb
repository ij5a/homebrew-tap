class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.27.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.27.0/subrosa-v0.27.0-aarch64-apple-darwin.tar.gz"
      sha256 "ee601dc237c9cda6b8ecdc1991484d3beeb3b803e56ded6d67be2582d77c8b13"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.27.0/subrosa-v0.27.0-x86_64-apple-darwin.tar.gz"
      sha256 "e1fa0818d43b6c77d1d97fc09bffd91dcd85e32430456365ba94d7434f0401e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.27.0/subrosa-v0.27.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cfea11006a0af8b4dea54d394bd491578dc9946cd688aa70036bedd7baaf5bce"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.27.0/subrosa-v0.27.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "394c0d07354f6c34072f6d18f86655c2defc639eebe324c437c53ed25e971e01"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
