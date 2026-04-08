class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.6.1/kei-macos-aarch64.tar.gz"
      sha256 "01007bceb234dd9779f0828cb4dd8599af6a3bb07d398a579b41a52de00c49dd"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.6.1/kei-macos-x86_64.tar.gz"
      sha256 "223176bc60da7f2c22d2bed7808181e4dd95816f3a26ad43c089f61042967fd1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.6.1/kei-linux-aarch64.tar.gz"
      sha256 "7b42eb51bb1abc791bc3a73b34336bc00248389594c5c5c50cfeccf09372f98b"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.6.1/kei-linux-x86_64.tar.gz"
      sha256 "acda5f9e27979020507d22fa5dc82472e29c803d009e2772c7a0e8abb3f498e7"
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
