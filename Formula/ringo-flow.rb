class RingoFlow < Formula
  desc "Declarative telephony scenario test runner for baresip"
  homepage "https://github.com/davidborzek/ringo"
  version "0.13.0"
  license "MIT"

  depends_on "spandsp"
  depends_on "opus"

  on_macos do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.13.0/ringo-flow-0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "30b5d4125dea92ff75d288ab29d044f42ec971d6fc46008f1ee9a07e712d20c6"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.13.0/ringo-flow-0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "23be6f1d3eaa36f931b06eba71ceec31c29232efd12d37c7bdcb62b1a610444d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.13.0/ringo-flow-0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "963dffe8b082a095594eb8ce43823fd17421f67e0214cdaba6be3aa764bce2e5"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.13.0/ringo-flow-0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0103dd599a5e6059fdc10b2f872a738eb3e4c9e71c2a648bd6fb482e4f3510ed"
    end
  end

  def install
    bin.install "ringo-flow"
  end

  test do
    system bin/"ringo-flow", "--help"
  end
end
