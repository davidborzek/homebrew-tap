class RingoFlow < Formula
  desc "Declarative telephony scenario test runner for baresip"
  homepage "https://github.com/davidborzek/ringo"
  version "0.11.0"
  license "MIT"

  depends_on "spandsp"
  depends_on "opus"

  on_macos do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.11.0/ringo-flow-0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "274056feedf1aee31c662b388e3d63d7576ea8ba49c87f520f05b5934a7d5723"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.11.0/ringo-flow-0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "95e8ea9aafe5ff1f310605d36c5ef4876ed57daefe6cdaf3f1b47693f0b052cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.11.0/ringo-flow-0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f29c0fadadb66bd04d7ff2c7780dcb0464c1d1ca34d9deb27569a083849ca3af"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.11.0/ringo-flow-0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bc5ddcf87f77484a04ec9629f3717d5b8221c8c7074c68f143b338fd695c1d67"
    end
  end

  def install
    bin.install "ringo-flow"
  end

  test do
    system bin/"ringo-flow", "--help"
  end
end
