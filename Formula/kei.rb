class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.7.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.3/kei-macos-aarch64.tar.gz"
      sha256 "a9519b1ea4a53cf388428eeee64124b3e37e15923ba354bd95ca9f1015d32878"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.3/kei-macos-x86_64.tar.gz"
      sha256 "8e8052a0c2d1b3568998cc84bea4b37c23a7db71d547cf8f34b6b109f2f55a30"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.3/kei-linux-aarch64.tar.gz"
      sha256 "9319fd6b2fb6d9e0c64081d8013a2e4decd0e7d501033ef97aad78874ac230b4"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.3/kei-linux-x86_64.tar.gz"
      sha256 "dd4b496c3045349028df6f60b4b5fbfb24b96bd4c33f2274e7d89acf3481c83c"
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
