class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.7.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.9/kei-macos-aarch64.tar.gz"
      sha256 "560429218d6bdca69936482230409151080d98366e237b19ca2bb24f1a878b06"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.9/kei-macos-x86_64.tar.gz"
      sha256 "adb845e1d215f6271c83d633a3c1e83aff5273678967fff7469379e6cef38ae7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.9/kei-linux-aarch64.tar.gz"
      sha256 "bfb10ff7abea51a7dd029637a461eec7116916dfbd0ef1d789d8c5ce2ff95dec"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.9/kei-linux-x86_64.tar.gz"
      sha256 "22508bd2d64173f3456dedab6861ac44b7a099699ce9c0320311ba4679fa26dd"
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
