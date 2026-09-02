class RingoFlow < Formula
  desc "Declarative telephony scenario test runner for baresip"
  homepage "https://github.com/davidborzek/ringo"
  version "0.14.2"
  license "MIT"

  depends_on "spandsp"
  depends_on "opus"

  on_macos do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.14.2/ringo-flow-0.14.2-aarch64-apple-darwin.tar.gz"
      sha256 "bb7a045b0c0d5a473eeb26f16834e24591bb9b1ff8fdfc8fea1938b8ece1b31b"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.14.2/ringo-flow-0.14.2-x86_64-apple-darwin.tar.gz"
      sha256 "faf94e482d088a3a6f4b005bf40307bceb19ed2e1d0fe928db4eb3b988b8132a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.14.2/ringo-flow-0.14.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3411ac6ff7071ba98fbbcb2b278874ef16596b12eacd6b4ada9362584a0282f2"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.14.2/ringo-flow-0.14.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "587b1c1fa6d940f0297b20a5e4317f7751bc742fdbe93b97623539bd4ce4a85f"
    end
  end

  def install
    bin.install "ringo-flow"
  end

  test do
    system bin/"ringo-flow", "--help"
  end
end
