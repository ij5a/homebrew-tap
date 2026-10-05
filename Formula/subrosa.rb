class Subrosa < Formula
  desc "Persistent, private memory for Claude Code"
  homepage "https://github.com/ij5a/subrosa"
  version "0.29.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.29.1/subrosa-v0.29.1-aarch64-apple-darwin.tar.gz"
      sha256 "0256a4b4dbc2dc1ac23cf56df957a1ad80c5f9b8e59290b49e5301d2422d173a"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.29.1/subrosa-v0.29.1-x86_64-apple-darwin.tar.gz"
      sha256 "cec7c9022d528d3e060f6353b97be023d1d3898c9e3ed66390776a7b13b9ccd5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ij5a/subrosa/releases/download/v0.29.1/subrosa-v0.29.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ba13d0ec916aa2bab818a4080295316d1439fe4e2fedb2be6bb2d36aac90cb9d"
    else
      url "https://github.com/ij5a/subrosa/releases/download/v0.29.1/subrosa-v0.29.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2e065c3560fd781abc4ccf508d50452af370bd425593139cc14ad8804ea17439"
    end
  end

  def install
    bin.install "subrosa"
  end

  test do
    assert_match "subrosa", shell_output("#{bin}/subrosa --version")
  end
end
