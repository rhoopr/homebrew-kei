class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.8.0/kei-macos-aarch64.tar.gz"
      sha256 "e1b34d08a11b7fe766996ef35a1525b25ef28ed431255ed88280d8ba48361b8c"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.8.0/kei-macos-x86_64.tar.gz"
      sha256 "171d17d3451b4c037c1727c230061be1f415bbfd2a88ca613ec197ef6ba347de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.8.0/kei-linux-aarch64.tar.gz"
      sha256 "a620bfd43176f6080f795804c83168fb5fca0c54287f3e583212ca52d9d39da4"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.8.0/kei-linux-x86_64.tar.gz"
      sha256 "324a221a8b5fab525600bdf5b2f4988bbd82464a4e399841543bef570dc88ef9"
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
