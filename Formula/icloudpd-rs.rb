class IcloudpdRs < Formula
  desc "Fast, reliable iCloud Photos downloader written in Rust"
  homepage "https://github.com/rhoopr/icloudpd-rs"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/icloudpd-rs/releases/download/v0.3.0/icloudpd-rs-macos-aarch64.tar.gz"
      sha256 "3648e1b248c71f90a19ead2ce1328ac7aeda75b2fb9ce2da2d4a6448607afd54"
    else
      url "https://github.com/rhoopr/icloudpd-rs/releases/download/v#{version}/icloudpd-rs-macos-x86_64.tar.gz"
      sha256 "241d2e9822e2167a3e4fd968b3c30559d0ff71ecf925c9b2b74ebce1a8b9e580"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/icloudpd-rs/releases/download/v#{version}/icloudpd-rs-linux-aarch64.tar.gz"
      sha256 "0ceb55dab745486bf3329b078876244048b30ad001cc8e6db338cf988837e88a"
    else
      url "https://github.com/rhoopr/icloudpd-rs/releases/download/v#{version}/icloudpd-rs-linux-x86_64.tar.gz"
      sha256 "674edd4bd6e8e05e419dd0c7b19db210f59a9c81ae5765341b4d7db96dd6a44d"
    end
  end

  def install
    bin.install "icloudpd-rs"
  end

  test do
    assert_match "Download iCloud photos", shell_output("#{bin}/icloudpd-rs --help")
  end
end
