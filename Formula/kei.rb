class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.10.1/kei-macos-aarch64.tar.gz"
      sha256 "94f686c076a93ef2750281d2b467d970776ed302bba35b7a3216deb057785bf9"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.10.1/kei-macos-x86_64.tar.gz"
      sha256 "4f444fd5f51efa4ce0c666dbfc3f033df9da6721a97a11a493e18bec2d7b4808"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.10.1/kei-linux-aarch64.tar.gz"
      sha256 "25a05f9cc683b7a688db7d3abf373ad08680749ddf5c97db3bd71673e9454bed"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.10.1/kei-linux-x86_64.tar.gz"
      sha256 "2c19883c6805e142283c99125e9b06c980a1dcac2b5a10dd54832ea70002f1e7"
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
