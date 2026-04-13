class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.2/kei-macos-aarch64.tar.gz"
      sha256 "1f06f9aff264716b8a859e6ea89a265cad2a6758081ae5d27c2f174921f1d312"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.2/kei-macos-x86_64.tar.gz"
      sha256 "f1d5d4d1b8edeb0465cd7ae8979a1082419915a94ed984d9d417f0184fd27e7f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.2/kei-linux-aarch64.tar.gz"
      sha256 "4f9f0fa95d71fa12b7fd326ee3a570fd8d7afd9f740065695a351b1212eb5256"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.2/kei-linux-x86_64.tar.gz"
      sha256 "f980edc19c6b5977765ebeb6edc4c4d786bbd037b007b27107015d2ac8c0a2a0"
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
