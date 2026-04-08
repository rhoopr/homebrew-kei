class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.6.2/kei-macos-aarch64.tar.gz"
      sha256 "0b743e5aaffc9de03ced2f636f95821880ec951b2f6959e7d1c3a454c302254c"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.6.2/kei-macos-x86_64.tar.gz"
      sha256 "9d9e8c040dae999ea67e42b96bdda3f9a8da5fa8b7de651bdc64bccd5ad6be50"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.6.2/kei-linux-aarch64.tar.gz"
      sha256 "68225c3b44e73b4b373f24d2b965df358fb912ea639ae3d47389b02700201d39"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.6.2/kei-linux-x86_64.tar.gz"
      sha256 "bfb7ac24bb461e18f2f1ec816dd94cef07595a71e4dcab97832719776e99aa5c"
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
