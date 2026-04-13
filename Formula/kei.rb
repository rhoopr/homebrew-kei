class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.7.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.8/kei-macos-aarch64.tar.gz"
      sha256 "970eda3097c97d2a3d39b8610f7eb004a4d4c85e725e0e9860a774d3319dab4a"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.8/kei-macos-x86_64.tar.gz"
      sha256 "91b7b95a8a994173fc7f2df434ed1d6c3297d0e5299ffa77bef7802329129a7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.7.8/kei-linux-aarch64.tar.gz"
      sha256 "8d3612ce36b274af2b6aaccc6182cc5cf08926041e39f83b5747bb264b440852"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.7.8/kei-linux-x86_64.tar.gz"
      sha256 "76e5b0f3a6bbd75d35ce6e01407238f7944fa5daa80aa5af716b846a3a826ea9"
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
