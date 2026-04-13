class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.7.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.4/kei-macos-aarch64.tar.gz"
      sha256 "fa5bd5285db50686da55840c036308661562cf320080e51a830a20cfdc3d25af"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.4/kei-macos-x86_64.tar.gz"
      sha256 "2c2e3a39969de56d244c8390277de1073b74c593e17447ad232eb06f31d0267e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.4/kei-linux-aarch64.tar.gz"
      sha256 "96dd6f11133651dd167b61d994501f244e9aabb1e4ae80cf03713ea711d802be"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.4/kei-linux-x86_64.tar.gz"
      sha256 "86f9964fede5a279d514349a6add62b9e17d45619e7cb91ebd0bc77d48963247"
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
