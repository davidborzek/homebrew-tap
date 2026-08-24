class RingoFlow < Formula
  desc "Declarative telephony scenario test runner for baresip"
  homepage "https://github.com/davidborzek/ringo"
  version "0.14.1"
  license "MIT"

  depends_on "spandsp"
  depends_on "opus"

  on_macos do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.14.1/ringo-flow-0.14.1-aarch64-apple-darwin.tar.gz"
      sha256 "8609d4c94310385203239139d3875fe56b13f94dc7950e337cc0ed6728728655"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.14.1/ringo-flow-0.14.1-x86_64-apple-darwin.tar.gz"
      sha256 "d3b81005bc9165e41def84370359e36a4c2b90ba7a89845f7e8a2edfc1a43402"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.14.1/ringo-flow-0.14.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1e722b1d2b5b4827ab10366132297685de3ddc54152af7276c28d7af62112ae1"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.14.1/ringo-flow-0.14.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e27d78628d9e208912c4eee46b90c8b94b82fc3b8f28b87f5d328685f0243ce3"
    end
  end

  def install
    bin.install "ringo-flow"
  end

  test do
    system bin/"ringo-flow", "--help"
  end
end
