class IcloudpdRs < Formula
  desc "Renamed to kei - install with: brew install rhoopr/kei/kei"
  homepage "https://github.com/rhoopr/kei"
  version "0.4.2"
  license "MIT"

  depends_on "rhoopr/kei/kei"

  def install
    odie "icloudpd-rs has been renamed to kei. Run: brew install rhoopr/kei/kei"
  end
end
