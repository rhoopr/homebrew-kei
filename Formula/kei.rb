class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.24.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.24.0/kei-macos-aarch64.tar.gz"
      sha256 "730403bc1d6bcf01fe5ea583b53608863379a4491a7f045c5c84f04717081f56"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.24.0/kei-macos-x86_64.tar.gz"
      sha256 "772bc5715b57f42c7dcf7f40dd72ea05047f239533ec85371cc7a2194fbb0327"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.24.0/kei-linux-aarch64.tar.gz"
      sha256 "c2b5fe1640daaa9398fce41e01e80fbd8225869f7a359d58dad445c7723bb952"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.24.0/kei-linux-x86_64.tar.gz"
      sha256 "0402df3eff13904ca1417d5b52758ccbe98a2d7f5360b84cb04cde5972a5c4f3"
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
