class Ringo < Formula
  desc "A terminal SIP softphone built on baresip"
  homepage "https://github.com/davidborzek/ringo"
  version "0.16.0"
  license "MIT"

  depends_on "spandsp"
  depends_on "opus"

  on_macos do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.16.0/ringo-0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "35bd46c87710730d151e76bb02e1a1d8012673c485629089734920aba1200b55"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.16.0/ringo-0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "718625b40753ff890ffe6a43ad0080b4f47a0077311f20984526e9b251d08440"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.16.0/ringo-0.16.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d646566d3a92d282d3c157cad536c4848f8b147f68049ea7545242c4e8ad3da8"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.16.0/ringo-0.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b8d99144b22e446e246256bc0f3a44b4f6c3d27f724c68996e04b40f29910152"
    end
  end

  def install
    bin.install "ringo"
  end

  test do
    system bin/"ringo", "--help"
  end
end
