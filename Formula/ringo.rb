class Ringo < Formula
  desc "A terminal SIP softphone built on baresip"
  homepage "https://github.com/davidborzek/ringo"
  version "0.17.0"
  license "MIT"

  depends_on "spandsp"
  depends_on "opus"

  on_macos do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.17.0/ringo-0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "80d7cbb4a1a0dd8ecf62967add022bdc2c0192c2eba3dcceb78ccefeb65d0b62"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.17.0/ringo-0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "9ed3ef8f7eae1ac4ff0da1131e1c2d3b6c001d22e14db2b14dbcc7542acfcd09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.17.0/ringo-0.17.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a49a02c10636ebdd6aa0f2bd2a2e88a514c7baf7ce210a034e380261f8d05d92"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.17.0/ringo-0.17.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b2500f0ea24eef9945996a9278c32cd969c23ab7e1eb72969380f483c5ace5c"
    end
  end

  def install
    bin.install "ringo"
  end

  test do
    system bin/"ringo", "--help"
  end
end
