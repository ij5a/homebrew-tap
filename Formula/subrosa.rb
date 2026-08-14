class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.25.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.25.1/subrosa-v0.25.1-aarch64-apple-darwin.tar.gz"
      sha256 "29382edd03f924c5196e0963d12a215033d0e575636449fb501313f360eaa3b2"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.25.1/subrosa-v0.25.1-x86_64-apple-darwin.tar.gz"
      sha256 "30c07442df5f654b3a2a3ebede35c946267aaf79798ed3e77cf5f32103ba911d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.25.1/subrosa-v0.25.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6160a09670578e37456db9b99fe74d2bf0ccb5e268068e8e4940a58fee2cdeae"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.25.1/subrosa-v0.25.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a833f4d48471849dbaf388beb0cade11cf67555b10b11cbf9faa9fa9169effff"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
