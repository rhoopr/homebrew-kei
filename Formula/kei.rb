class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.13.0/kei-macos-aarch64.tar.gz"
      sha256 "e1ce3bcde1be454e3f56b68908c595160233477304f65b9152062dc04ecfe1ec"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.13.0/kei-macos-x86_64.tar.gz"
      sha256 "41e1988015af9446b52dfa3ff5b09ee50f0505c9c50e2d400fe20e484920875c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.13.0/kei-linux-aarch64.tar.gz"
      sha256 "ad50672f97b2c22b57a99e57391c0367822352a96daa006bf2de0a7abe164b2c"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.13.0/kei-linux-x86_64.tar.gz"
      sha256 "7a1cded484ebc52cf7befe9208ee21644111dfd9a47632adcfce828385688b57"
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
