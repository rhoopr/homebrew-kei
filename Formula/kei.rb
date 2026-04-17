class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.8.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.8.2/kei-macos-aarch64.tar.gz"
      sha256 "d124a3f560f70ad22b818638298495abb43a57e7e61e6a39c25de897a40d64fe"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.8.2/kei-macos-x86_64.tar.gz"
      sha256 "d5ffb089bf159d2e1c121cbe7fe40eff4aad96a5edc565509e02a913165faebb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.8.2/kei-linux-aarch64.tar.gz"
      sha256 "af1ec194395767af5a0731b4334b538d4aec004d3d537e29c381f9b0bef77fc1"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.8.2/kei-linux-x86_64.tar.gz"
      sha256 "8c70e40b85d2c906b8d4d933c993e616ea1c1dce1ae511aee4bb15d63c51942d"
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
