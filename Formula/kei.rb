class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.25.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.25.0/kei-macos-aarch64.tar.gz"
      sha256 "fb189aa34b7c1da5e65820dc7aaf9020d3e22e5f7b08de3ccf1be791aca2bd98"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.25.0/kei-macos-x86_64.tar.gz"
      sha256 "8fc0f40699f7ff9f0d1dc30fc1d035eb2ce088f6bf70ccf88b8cf8fd7df5feef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.25.0/kei-linux-aarch64.tar.gz"
      sha256 "edf30a3ba889b8456ad0eb7b7e691e44d09f17b878efbef715d99aa8aaace399"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.25.0/kei-linux-x86_64.tar.gz"
      sha256 "695192c4af06a521fe8d70981d8b15590830b09c1836d968357e29271bb20ae3"
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
