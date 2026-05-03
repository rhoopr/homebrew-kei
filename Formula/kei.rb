class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.13.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.13.1/kei-macos-aarch64.tar.gz"
      sha256 "dfe4717ef7f870b6d84345a6d18d0a4784e4c3a4ecf8f34a5d0fffb822ed856e"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.13.1/kei-macos-x86_64.tar.gz"
      sha256 "d66692d26091c4b1bd1d04d260009db50fa71a6e094ce79c12e9c87e3b62c4d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.13.1/kei-linux-aarch64.tar.gz"
      sha256 "2f0be42b57c15fc3664353bd9eca740f858cdd71f6b0ee15c16bd40103bafd11"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.13.1/kei-linux-x86_64.tar.gz"
      sha256 "4defc31cd6903b8cb87ae7c79ace1f8b305386e62a50a3603e6e56d46ba4dd37"
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
