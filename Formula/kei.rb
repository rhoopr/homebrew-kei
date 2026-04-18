class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.9.1/kei-macos-aarch64.tar.gz"
      sha256 "39bee36f2a2454b446fc026e3187d222fa8729d108f1d9bc44bad7a0e09fe89c"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.9.1/kei-macos-x86_64.tar.gz"
      sha256 "a691fefb8ebb3b1f83873cbb3a5dbd980daba92195227def9898bfd8047a544f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.9.1/kei-linux-aarch64.tar.gz"
      sha256 "b2d454bed238e4da151b5da0018592e11c6128fb5f80e88620b85d18589748e5"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.9.1/kei-linux-x86_64.tar.gz"
      sha256 "c9081c2d864882280788db52909bce1fd281d19213503fab8d49c590106845ad"
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
