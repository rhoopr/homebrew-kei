class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.9.0/kei-macos-aarch64.tar.gz"
      sha256 "d3ace3aeb6efb80de8232ce5c00ac6395dbf509a5c1090fb6fa6e4cd6be2a139"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.9.0/kei-macos-x86_64.tar.gz"
      sha256 "147d839fc7acde43e7ececc35609548b98ab288be9ae8c209272f9337939d0d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.9.0/kei-linux-aarch64.tar.gz"
      sha256 "d2e8f199518122b35feece24c137664146c3fc5d46bc21fa772fbeeb2fddae29"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.9.0/kei-linux-x86_64.tar.gz"
      sha256 "81491a75458f32326a5490ed6348f7094c450a0de10b11497bbc6dafadff01f2"
    end
  end

  def install
    bin.install "kei"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kei --version")
    assert_match "kei", shell_output("#{bin}/kei --help")
  end
end
