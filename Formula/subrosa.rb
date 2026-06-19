class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.14.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.14.1/subrosa-v0.14.1-aarch64-apple-darwin.tar.gz"
      sha256 "e0010252d67e64f1dbcf3ce7e02ed7779326fa4f9c5f99f301abbb1bb7aaaea3"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.14.1/subrosa-v0.14.1-x86_64-apple-darwin.tar.gz"
      sha256 "bb9ca8f6ca610d53916cfef87e9fe5c176497fb879a5b5b19f3aefaecf6cee5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.14.1/subrosa-v0.14.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4fd29689f584e9baea16c443f1b7f76a954ce0a649a8bbe73ece663e99faa9cf"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.14.1/subrosa-v0.14.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "70663312d1336fc784e7ac433dde34d5389cfaee34453c0b9a530b9f50644832"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
