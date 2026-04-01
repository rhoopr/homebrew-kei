class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.4.2/icloudpd-rs-macos-aarch64.tar.gz"
      sha256 "be5b0596092baeeb6c01d3c5570b73fad71facdc9ddee941a330e7bc96cc9c21"
    else
      url "https://github.com/rhoopr/kei/releases/download/v#{version}/icloudpd-rs-macos-x86_64.tar.gz"
      sha256 "241d2e9822e2167a3e4fd968b3c30559d0ff71ecf925c9b2b74ebce1a8b9e580"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v#{version}/icloudpd-rs-linux-aarch64.tar.gz"
      sha256 "0ceb55dab745486bf3329b078876244048b30ad001cc8e6db338cf988837e88a"
    else
      url "https://github.com/rhoopr/kei/releases/download/v#{version}/icloudpd-rs-linux-x86_64.tar.gz"
      sha256 "674edd4bd6e8e05e419dd0c7b19db210f59a9c81ae5765341b4d7db96dd6a44d"
    end
  end

  def install
    bin.install "icloudpd-rs" => "kei"
  end

  test do
    assert_match "kei", shell_output("#{bin}/kei --help")
  end
end
