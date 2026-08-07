class RingoFlow < Formula
  desc "Declarative telephony scenario test runner for baresip"
  homepage "https://github.com/davidborzek/ringo"
  version "0.14.0"
  license "MIT"

  depends_on "spandsp"
  depends_on "opus"

  on_macos do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.14.0/ringo-flow-0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "47251e0318784347ce445e9840b024677d0d1618f2b8a8d0e0a6252647b432d9"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.14.0/ringo-flow-0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "43669efb2b4669b8759c66125d3f952114186241b8cc7595c1bf7b0a96ca08c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.14.0/ringo-flow-0.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6d2d0a8c52f20c2191259519d5cf81474bb67635caa0fffe189216760eb25293"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.14.0/ringo-flow-0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7bf5a6e19fa16bff5c7e08e9bc88dc69f06ba46ea031e8b54dacc6ccff8a4aab"
    end
  end

  def install
    bin.install "ringo-flow"
  end

  test do
    system bin/"ringo-flow", "--help"
  end
end
