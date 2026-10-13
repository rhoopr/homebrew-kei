class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.25.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.25.1/kei-macos-aarch64.tar.gz"
      sha256 "2b71b41b1c108320136d8d3f54eb03b75e74d4386580a4845bac504d956b3b86"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.25.1/kei-macos-x86_64.tar.gz"
      sha256 "08d108d83281ce24bdf0922d6875033e619e13c446f33cb23c27d435958905b4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.25.1/kei-linux-aarch64.tar.gz"
      sha256 "a3d03f2592ede3dacbab83ca7fe7442c642ca53ba403bb31a431b5227854b4f0"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.25.1/kei-linux-x86_64.tar.gz"
      sha256 "2472fc512d2cbec63818c0214aa5b3f8153675ddcdc3e218672a9959349b4a78"
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
