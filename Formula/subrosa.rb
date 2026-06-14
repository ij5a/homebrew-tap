class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.9.0/subrosa-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "6b87be21fd38da9e499d76a9cb0c3b8248888aa846daf43ea1ecc2a93efb397d"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.9.0/subrosa-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "ebc812011ddb67ae26091c44d173f49d0da2c94bf1cc291f621c64bee1505820"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.9.0/subrosa-v0.9.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "de6710eac4ee6000fa5ce5741e916ea547930bf639dbf5e899c6adaf106069f8"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.9.0/subrosa-v0.9.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "060d7c762993115f021ba44a981cebb7e6e60229bb9c0860de50a0ec9510a5dd"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
