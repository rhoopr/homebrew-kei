class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v#{version}/kei-macos-aarch64.tar.gz"
      sha256 "314efd33d2d2da509fde1f1a12d98f49227e81a51479cad02fc9501925072547"
    else
      url "https://github.com/rhoopr/kei/releases/download/v#{version}/kei-macos-x86_64.tar.gz"
      sha256 "ad3f35ba191f9af4324ed310165570e8a9e6d6260091d12cddd93eecd93b90be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v#{version}/kei-linux-aarch64.tar.gz"
      sha256 "64e57d92267d5056a0792aab02b2370001f7ad6f2ac9ff7374280ddf073d99cb"
    else
      url "https://github.com/rhoopr/kei/releases/download/v#{version}/kei-linux-x86_64.tar.gz"
      sha256 "2a7b1d9cd8f4d01642c041944894daabff4c30bc0e54d337ad62efe256c83015"
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
