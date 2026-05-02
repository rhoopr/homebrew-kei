class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.12.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.12.2/kei-macos-aarch64.tar.gz"
      sha256 "923ee1231430187eb6520a0e8fbe6aee044a87d7566533e246660193cd96fdcd"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.12.2/kei-macos-x86_64.tar.gz"
      sha256 "f027afb33e1fe7b014bbf737b977776ede85a4565724e3ab6610012b4c30129c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.12.2/kei-linux-aarch64.tar.gz"
      sha256 "44f1e9b5d106ef56f5337939e6af731e02ee48a1b4211dfcfc3a63910b93d5de"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.12.2/kei-linux-x86_64.tar.gz"
      sha256 "365be4f5d82f42a13ed3c5529e3d383d2850e730576a83bc0b31ecf3106356db"
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
