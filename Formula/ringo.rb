class Ringo < Formula
  desc "A terminal SIP softphone built on baresip"
  homepage "https://github.com/davidborzek/ringo"
  version "0.12.0"
  license "MIT"

  depends_on "spandsp"
  depends_on "opus"

  on_macos do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.12.0/ringo-0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "d67c973e76ba83aebe0f3920bcdc5557548eb4fb5466b25f6b1e01c5ad06a2ac"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.12.0/ringo-0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "d9db449445119523f812d3a3854ea1f39ebfe7d0a8f3f948fef5dae9ea18c1f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.12.0/ringo-0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "227a78d870e092ef5f70a04c914e8fce7ea155064708da5ec16c7010b2e2031b"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.12.0/ringo-0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "000ec94aab9975682ea62eb38f8d3bdd613a29bfec8c96ae2e75222079956b4b"
    end
  end

  def install
    bin.install "ringo"
  end

  test do
    system bin/"ringo", "--help"
  end
end
