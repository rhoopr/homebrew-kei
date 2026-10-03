class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.24.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.24.1/kei-macos-aarch64.tar.gz"
      sha256 "f335d5adcfbbe0608aede69118439268b31aa092f61de7980697447e79e41061"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.24.1/kei-macos-x86_64.tar.gz"
      sha256 "9bb975119cc2698b34ae190966ab83e03fe49e70bffa137677074bbccbe961b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.24.1/kei-linux-aarch64.tar.gz"
      sha256 "622359b6196625c041cd578fa9440906e8414d2068da09e8f6921d51cf21a051"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.24.1/kei-linux-x86_64.tar.gz"
      sha256 "d88a51e29c3dcf4ee32ee4daf1435f0e2ea40606197a64c5bee306103e710c2d"
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
