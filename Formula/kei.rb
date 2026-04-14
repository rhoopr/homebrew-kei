class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.7.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.11/kei-macos-aarch64.tar.gz"
      sha256 "f85d2e822ef2524a93ebb020eb82d3943714fefce3f6909a2fc8ce4318ae3dc1"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.11/kei-macos-x86_64.tar.gz"
      sha256 "20b95a0ee6dfbfd6b2bc879c9ef63a39e413c91191e8bccad634951c9737994a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.11/kei-linux-aarch64.tar.gz"
      sha256 "b823944bac020f842db09af285ef4b84c3c306b709a6e8a1d5804b1052a8703b"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.11/kei-linux-x86_64.tar.gz"
      sha256 "0ce118c19f71d2e1072d561884dd82d8308324d9cd460f1e4b0d45a150b4b2aa"
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
