class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.7.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.7/kei-macos-aarch64.tar.gz"
      sha256 "207ad4ce8a6ebefb3044d1994fe2bad213e78e8063f817fd989f06f9f3ea5330"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.7/kei-macos-x86_64.tar.gz"
      sha256 "09560aac9c1a91fcfdb73e2b48a67a114f0f469612549789d2c93c1d554a29e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.7/kei-linux-aarch64.tar.gz"
      sha256 "6019ed0155d2d04eb8c63228445cd7191902bc7354c4ecbd099b60a420e8e19c"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.7/kei-linux-x86_64.tar.gz"
      sha256 "6c3c657c17dd718cb65bdcb724760bd4c727a84acfc1b5fb1716b4fcd1095acd"
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
