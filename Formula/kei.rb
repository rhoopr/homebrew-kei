class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.13.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.13.2/kei-macos-aarch64.tar.gz"
      sha256 "2a9df97e9cf7c5cd351c974faffc2056f5b0b522087b893155f4d515ffde73ca"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.13.2/kei-macos-x86_64.tar.gz"
      sha256 "21377a784faae1bb89030dde5cc4e5398cffa823c66a4f5cfe1fdeebcbeddb43"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.13.2/kei-linux-aarch64.tar.gz"
      sha256 "4cce4ede66d16d4f2459c62fa9a70d3c42f8f9a403fd926bd8198435bf991948"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.13.2/kei-linux-x86_64.tar.gz"
      sha256 "cfe2ad991045072b963849793f57c651dfb0e835aec477dbd9fb1d4b2416a9ee"
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
