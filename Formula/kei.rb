class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.13.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.13.3/kei-macos-aarch64.tar.gz"
      sha256 "34db8680413902789e1dd430e0135de0839a66255b37b03c16ed5c583aca1add"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.13.3/kei-macos-x86_64.tar.gz"
      sha256 "df030f67e65ed295e867db9da391e0d7321738fadd515a7dfd221ccd714a48ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.13.3/kei-linux-aarch64.tar.gz"
      sha256 "5b7bd7674e2b2c02dbaef5803f35d35a7fb054a84d6b5bda5c94e7335a066cc4"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.13.3/kei-linux-x86_64.tar.gz"
      sha256 "4fd1dcc10d82dbf04aa2b8d856d071f4a5d5be6680d47d380fccc72e85c2be29"
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
