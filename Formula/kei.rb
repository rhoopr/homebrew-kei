class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.25.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.25.2/kei-macos-aarch64.tar.gz"
      sha256 "70d01b0fe6c084b898a67403cb84858d223601f426f554b48369376bb4847ba8"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.25.2/kei-macos-x86_64.tar.gz"
      sha256 "8833faacaa335612ea344cb169712a444c6709cf4bd0c4902a38d50ffc1fbeae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.25.2/kei-linux-aarch64.tar.gz"
      sha256 "8434309bf6cb23472abae5401f1c6803e4d38360c0852392f458075579af70b2"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.25.2/kei-linux-x86_64.tar.gz"
      sha256 "d3dcec64dac69f868510d286c40882d6679a7bc96f03e4db5369fea4d9e14e03"
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
