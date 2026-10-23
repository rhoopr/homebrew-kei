class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.26.0/kei-macos-aarch64.tar.gz"
      sha256 "d3369136e3579d787f58ffcae0900f029de7dbf0c946610b2a40195bb13bb4db"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.26.0/kei-macos-x86_64.tar.gz"
      sha256 "4b62a63da9edb2880f69159bee0790fdab711c87e13dc19dbdeeab3619c4dd03"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.26.0/kei-linux-aarch64.tar.gz"
      sha256 "53ecd1261bc2cc6e900758d326a158d5e4985e5a5e890c54100c373cf830a937"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.26.0/kei-linux-x86_64.tar.gz"
      sha256 "64375e0a8f924b9b20aee0dcafc5bc941df1cb8ead4b814a1d514065ad221cb4"
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
