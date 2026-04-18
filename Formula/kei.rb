class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.9.2/kei-macos-aarch64.tar.gz"
      sha256 "88c185188c8bd1dc19d98909cd82b062ea18e90fe52e20e21052ea12992793f2"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.9.2/kei-macos-x86_64.tar.gz"
      sha256 "2377d8ea3f10208804a7fa61c7724f254fc2d5afd60d79c49349a26969453f8c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.9.2/kei-linux-aarch64.tar.gz"
      sha256 "d087cf65e6a0ea62c588a3b91de6fc9de627781060cb7cf89a8a105a361f7835"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.9.2/kei-linux-x86_64.tar.gz"
      sha256 "fcd1ee6d5783b5fd5b67ab0d6b7c41b8532490e8821e6a91403dccaef845bb06"
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
