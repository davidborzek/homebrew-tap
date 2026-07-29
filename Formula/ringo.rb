class Ringo < Formula
  desc "A terminal SIP softphone built on baresip"
  homepage "https://github.com/davidborzek/ringo"
  version "0.14.0"
  license "MIT"

  depends_on "spandsp"
  depends_on "opus"

  on_macos do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.14.0/ringo-0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "ac7ff6fdebc8868612a94c04e058fc027fe7482eb210a6df43389c535b1cf18d"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.14.0/ringo-0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "306ca6985df35618554a8e652d3ca6d8535dcc39eb2601363e661cf1eb03b1b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.14.0/ringo-0.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d2f9b75d32741fe8e2d25fe9c58e3243ee10b8506f0847382b7d025466c2c7e"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.14.0/ringo-0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "443cccafac70a99cc3b98f5fbaa5c067b3d12c73faed283c38abfa79d19816c8"
    end
  end

  def install
    bin.install "ringo"
  end

  test do
    system bin/"ringo", "--help"
  end
end
