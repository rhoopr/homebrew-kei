class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.7.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.5/kei-macos-aarch64.tar.gz"
      sha256 "12ab2b817a3b80102031e552894db167ce312d307d10d5e694433c7e5c0ecd20"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.5/kei-macos-x86_64.tar.gz"
      sha256 "756c1e74a9ea0cb5b9101feb2bf52d1ecc4b21191ca903634fc5b5b575e6f6c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.5/kei-linux-aarch64.tar.gz"
      sha256 "e038562918fb7395b109bf28c7fdb117583f4535b2f3cbb5575533b43a0e116d"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.5/kei-linux-x86_64.tar.gz"
      sha256 "be2e363b2970324693f16b38e28644b9e965d5396f6f5e9b58265d178e2fbcf2"
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
