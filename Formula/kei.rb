class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.7.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.12/kei-macos-aarch64.tar.gz"
      sha256 "f8a3ab4fa273e69f3bcd86f01a5fe4f5baa172e2eda814aaaec6a0635ac244ba"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.12/kei-macos-x86_64.tar.gz"
      sha256 "1655e937cdc591eaedff09ccfa3bc4d4fc8818bbf39f012f7d2eb86586319174"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.12/kei-linux-aarch64.tar.gz"
      sha256 "8a8cd28cbead810eb5e89dc76ef9d197c3171bcd5b449ed293ce21614b4c3c17"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.12/kei-linux-x86_64.tar.gz"
      sha256 "929ed56789a98a161734398a2f0dedaf51f6c56d697fe8558d1c830b40d77cd2"
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
