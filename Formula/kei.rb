class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.12.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.12.1/kei-macos-aarch64.tar.gz"
      sha256 "edea5795fbcaaf6ce6d9a6b255a69939e85ba62e0b230ce21513945fda4a724a"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.12.1/kei-macos-x86_64.tar.gz"
      sha256 "ec1b1177a20ee36d44537569fae933a6d2b570fc1b34c655ad20115be34a10d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.12.1/kei-linux-aarch64.tar.gz"
      sha256 "e18f47ef82e47bbc413b2066eca4c1b98cc914e96e41378d422946524912df2b"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.12.1/kei-linux-x86_64.tar.gz"
      sha256 "4d469333560c7ddff3e7423ae22b558cc37be58b4316422d728de67ab89f5bb1"
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
