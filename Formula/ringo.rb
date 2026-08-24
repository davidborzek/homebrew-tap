class Ringo < Formula
  desc "A terminal SIP softphone built on baresip"
  homepage "https://github.com/davidborzek/ringo"
  version "0.15.0"
  license "MIT"

  depends_on "spandsp"
  depends_on "opus"

  on_macos do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.15.0/ringo-0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "b3a073a39e01ab4f1d5277f23ddc0a65a9e8379b9b9a85eea2e40f49ed3a541f"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.15.0/ringo-0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "601c7cdd88f3a747e7e2ab922d1df9a315c3773eb2982088e1416f9e6a7e11ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.15.0/ringo-0.15.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4226c753a01b8144233aa4b35bbd442d9ff59d05b06b72b65240566cb12b7c67"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.15.0/ringo-0.15.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8da596c807b5f914785d7367a8b6efedadec108f42c17c97aa5b6be816c78692"
    end
  end

  def install
    bin.install "ringo"
  end

  test do
    system bin/"ringo", "--help"
  end
end
