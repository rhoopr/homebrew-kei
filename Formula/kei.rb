class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.7.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.6/kei-macos-aarch64.tar.gz"
      sha256 "e7e5fa9669d1270ff401fca1fae9db2ce63800f4db180dc8a5527b6d972a8291"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.6/kei-macos-x86_64.tar.gz"
      sha256 "7d1518b1e4d85585b1ecdcbbdbaa67ed158cdb4d14c72cf14754996a642b8cd4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.6/kei-linux-aarch64.tar.gz"
      sha256 "a3541a513a8494e0d61261f5625462c3983ef3d8044a824eb5911299a20c3c98"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.6/kei-linux-x86_64.tar.gz"
      sha256 "a55270bbb9646ea7c4d569eba9876d86f603f8a3c6d0aeb8a7532e2ee8f6d30b"
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
