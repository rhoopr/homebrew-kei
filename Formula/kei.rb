class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.12.0/kei-macos-aarch64.tar.gz"
      sha256 "bd874ea32e2422a9ebdcf98c5b4add76184a8dd3e303a9b754a595151bc3dedb"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.12.0/kei-macos-x86_64.tar.gz"
      sha256 "c3d174efdc924af342f398d99f6807ca01c6ddfe778a454ebde0963563cd347e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.12.0/kei-linux-aarch64.tar.gz"
      sha256 "aa85639716ddad296bc67bbd9352e6f75c49c46275afb1884a12baf60add8487"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.12.0/kei-linux-x86_64.tar.gz"
      sha256 "09412ef0533918bb3a73e8ffaceed1702884f8ec5aa437261709923e56254fbc"
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
