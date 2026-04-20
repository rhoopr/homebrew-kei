class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.10.0/kei-macos-aarch64.tar.gz"
      sha256 "cff2b8c64030b9fa0cd8fb6efba5e9883e7f78eae9eca22e28317c9bcde283d5"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.10.0/kei-macos-x86_64.tar.gz"
      sha256 "48b5df19f7769dd763cbb27aa1386df14682f32b4fd63c3d867f60e314b3eb67"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.10.0/kei-linux-aarch64.tar.gz"
      sha256 "aa71735d8fb40c20c5149ca8f8c3eee775f1e5f6e62f1c5de23b092fc0177a1e"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.10.0/kei-linux-x86_64.tar.gz"
      sha256 "f02a24623193e1bd80db9de04ad5a92ea37418dd8aedcdb90d23a23211560f3c"
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
