class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.0/kei-macos-aarch64.tar.gz"
      sha256 "dd1c07f2bef63b4cc084d4e0b07fa0c30b4e0372a547d28c50c9169bea8c5de6"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.0/kei-macos-x86_64.tar.gz"
      sha256 "1e51eb1f6f804f98ddae176fa4fcab12656548232c175d8d3886638b0ae00ff6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.0/kei-linux-aarch64.tar.gz"
      sha256 "748f0f4206886832bd6784658f2d9ac4d066bc8707ac9893ddf553c947e43ded"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.0/kei-linux-x86_64.tar.gz"
      sha256 "73a61c27ce51e5db622be9ef2d90d1c238a55eb625345f0fb39328b27f5a9977"
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
