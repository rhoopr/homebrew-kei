class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.1/kei-macos-aarch64.tar.gz"
      sha256 "d2b2d7a1daca4dfc09b3177edf40943bde491737e2e2a8a36dd45ef01452771c"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.1/kei-macos-x86_64.tar.gz"
      sha256 "94baa2b7701299ef5b3a3d2ebc9ee4336ae189abbb88e086cf73eda85ae3aded"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.1/kei-linux-aarch64.tar.gz"
      sha256 "eaf1950da1e436d358786c838384de1bc9ff87a9048e5f81766f008c10c43727"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.1/kei-linux-x86_64.tar.gz"
      sha256 "546b0e131abb2c3a510c1ddd8324b5fabd60fe0cdb08725e14bd147e4b1568c0"
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
