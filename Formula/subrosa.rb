class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.24.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.24.0/subrosa-v0.24.0-aarch64-apple-darwin.tar.gz"
      sha256 "fc044e21a4f293c5594ff6bba3c95367492169dcad1b50623a994d237b41d7c6"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.24.0/subrosa-v0.24.0-x86_64-apple-darwin.tar.gz"
      sha256 "5f76e8da3cfedc481811730919ec737f6ccc5af7519acb5ea91019129001e4fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.24.0/subrosa-v0.24.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "19d9e38c7601765a69f54ca52078333ec87dc20d4ae66dc9fdc898a7f9c17e55"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.24.0/subrosa-v0.24.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9af9f5c36a9a36597d457433ae5ad2bf52a0555a97fa5f781fd4e7b670d9d69e"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
