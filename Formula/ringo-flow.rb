class RingoFlow < Formula
  desc "Declarative telephony scenario test runner for baresip"
  homepage "https://github.com/davidborzek/ringo"
  version "0.14.4"
  license "MIT"

  depends_on "spandsp"
  depends_on "opus"

  on_macos do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.14.4/ringo-flow-0.14.4-aarch64-apple-darwin.tar.gz"
      sha256 "af538df64f3217d23ef854a1f8ef1ba3b0d4f87c9f62e9b58da11cdcbdfa8d54"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.14.4/ringo-flow-0.14.4-x86_64-apple-darwin.tar.gz"
      sha256 "907f4848dcd5eb35a35d6d0a33ad8b3a0b863a07cb30320a178ff588acd9107c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.14.4/ringo-flow-0.14.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aa952696ee88ea58e10b62ecfb2d7df7cd63bc881402a93d2eb08f7991aff961"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.14.4/ringo-flow-0.14.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6ac895c04817d7dcde87c33f8796fa354dcfa77e3ca8bcb692dd558af3a5da2a"
    end
  end

  def install
    bin.install "ringo-flow"
  end

  test do
    system bin/"ringo-flow", "--help"
  end
end
