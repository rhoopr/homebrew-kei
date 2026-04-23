class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.11.0/kei-macos-aarch64.tar.gz"
      sha256 "210a2c92509366f0fe3456489726d98f177fcf4e484f24c48df2a8f80ee941b4"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.11.0/kei-macos-x86_64.tar.gz"
      sha256 "70858985a439e6eacf72a6c094c40f08d5f912d683ea3540aa464d52cf3217c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.11.0/kei-linux-aarch64.tar.gz"
      sha256 "e55b0761ceb3fccd08debc984b5d37501fd6598ea164b33503d95eeab9f4abe7"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.11.0/kei-linux-x86_64.tar.gz"
      sha256 "5e633425cbdbb4e0b13f2a1d3f5f6a24cc2e7b3fa6bd2e15c1e101f2b98f509a"
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
