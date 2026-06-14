class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.8.0/subrosa-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "4da63436c293a6d4d555e5710730580eb613b786d076165317c243a108e20a3d"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.8.0/subrosa-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "fcc6f9473bd3cb390657869c9fbf0a6301f17c7967d1806a1053dc0e24d254f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.8.0/subrosa-v0.8.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0f04076fa95358bbf47ccfb91bc7306628796ec9928d79c07b75976428e77183"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.8.0/subrosa-v0.8.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9551fe3fa426050a57380913c0051f43bdab83b243372de1c70c6666b0492dac"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
