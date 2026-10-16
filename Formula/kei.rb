class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.25.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.25.3/kei-macos-aarch64.tar.gz"
      sha256 "c0c741cc0516d68ebe90cb84cef657c7e6bc75b8a12cae714404127b64f7b8fc"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.25.3/kei-macos-x86_64.tar.gz"
      sha256 "48f29d386ff0f50987b263e56bcebe9bd990d5fbe0341a097dc549145a5b821e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.25.3/kei-linux-aarch64.tar.gz"
      sha256 "44582a9236515d3327e66812a1ce8bcf74e33a1a9eecad946acdd1bf4443c0cf"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.25.3/kei-linux-x86_64.tar.gz"
      sha256 "a476613e2c7d795530ee214a71dff94491a91c69f6add941437da7b5e4ad9c76"
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
