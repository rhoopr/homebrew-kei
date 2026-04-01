class IcloudpdRs < Formula
  desc "Renamed to kei - install with: brew install rhoopr/kei/kei"
  homepage "https://github.com/rhoopr/kei"
  url "https://github.com/rhoopr/kei/releases/download/v0.5.0/kei-macos-aarch64.tar.gz"
  version "0.5.0"
  license "MIT"

  def install
    odie "icloudpd-rs has been renamed to kei. Run: brew install rhoopr/kei/kei"
  end
end
