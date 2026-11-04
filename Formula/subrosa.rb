class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.30.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.30.3/subrosa-v0.30.3-aarch64-apple-darwin.tar.gz"
      sha256 "44bf0a9064b34f7a0d784b88489bbaad74950b8a44f0d4a0c81ed1ae82dc427c"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.30.3/subrosa-v0.30.3-x86_64-apple-darwin.tar.gz"
      sha256 "af919d2718b5c1d42904f0c1f49560aa0300d81a48e3ba465622836aa46a3f5d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.30.3/subrosa-v0.30.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7bd1f32eb630cd0dbc681e9fb2796f3d0e0867c49111b2fdf84391afafb5370a"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.30.3/subrosa-v0.30.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ae9c9eabb2d5ada52cfafdaf4eac913b16ec5dfe0444ae9e85369c4f8f85424b"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
