class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.7.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.10/kei-macos-aarch64.tar.gz"
      sha256 "8f1855b3ce3995ba9d08669be90cdc20793d7f236e64aba6fe418e9a62dbdd9f"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.10/kei-macos-x86_64.tar.gz"
      sha256 "07ea319b4e452865f8bb53bd1131a7b3fe07e991c06c415bca9e4a34acc98e6e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.10/kei-linux-aarch64.tar.gz"
      sha256 "b646f67c34016fee50282d1f120c6ef4f6269e12616fcc393d43cd4cbf1b228f"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.10/kei-linux-x86_64.tar.gz"
      sha256 "40d2e92b7e5460158b76593047220a7e54daa001e5e717558a72a450fec17c24"
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
