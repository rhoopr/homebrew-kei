class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.8.1/kei-macos-aarch64.tar.gz"
      sha256 "c598c7b1610d50ee9b70bc86c9a1fbb217164d3d38cec112d2bab994da5c29bd"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.8.1/kei-macos-x86_64.tar.gz"
      sha256 "c725dca4ee24cf2c11ddb21c8acc4304d4861501ef074a334002632fdb50a8cb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.8.1/kei-linux-aarch64.tar.gz"
      sha256 "3fb6a25525cf5c1a338fcfb97a287bdbe7feb41047796240a2423d909d7ecdea"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.8.1/kei-linux-x86_64.tar.gz"
      sha256 "702aa2798dc7a7979e8ebb38753a258b5518d8a52232c3006b438fe897d085f9"
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
