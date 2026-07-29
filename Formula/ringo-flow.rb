class RingoFlow < Formula
  desc "Declarative telephony scenario test runner for baresip"
  homepage "https://github.com/davidborzek/ringo"
  version "0.12.2"
  license "MIT"

  depends_on "spandsp"
  depends_on "opus"

  on_macos do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.12.2/ringo-flow-0.12.2-aarch64-apple-darwin.tar.gz"
      sha256 "690e0271873ffb33481a42b6739cb62fe50a5d2b52ae72ad5fb7b14aa9b8ff7d"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.12.2/ringo-flow-0.12.2-x86_64-apple-darwin.tar.gz"
      sha256 "b19ee5ed1ffb2fbf7da4ad4f183d4c01cb7b7c57783e3939359c95b690135c60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.12.2/ringo-flow-0.12.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "63c0f49fc646ca70ac141ffd3b2a1f5dafd5e1ca30be52d02688ef6772a132ea"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.12.2/ringo-flow-0.12.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f37d7a4ea999fb2cf03bbca3a37a5683fdcb4ff7e8488165b7e83743cc2ffbc2"
    end
  end

  def install
    bin.install "ringo-flow"
  end

  test do
    system bin/"ringo-flow", "--help"
  end
end
