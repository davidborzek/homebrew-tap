class Ringo < Formula
  desc "A terminal SIP softphone built on baresip"
  homepage "https://github.com/davidborzek/ringo"
  version "0.11.1"
  license "MIT"

  depends_on "spandsp"
  depends_on "opus"

  on_macos do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.11.1/ringo-0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "d819317b0ce28732b3a722fbb2856dc820212d669a3246a6d736355cd8f1ae17"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.11.1/ringo-0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "864e830efe5b1d3f73667764caa460b7927ee8911a944863e494b226ac6ae78c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.11.1/ringo-0.11.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8c3c42e40d003d5bb15e1831a972205f910b494357ef0caf94af86fdec5059f5"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.11.1/ringo-0.11.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0dafd20d4227540a9ac11a784c509520d85ea3b1a0205740789e2174fa992d9a"
    end
  end

  def install
    bin.install "ringo"
  end

  test do
    system bin/"ringo", "--help"
  end
end
