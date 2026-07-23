class Ringo < Formula
  desc "A terminal SIP softphone built on baresip"
  homepage "https://github.com/davidborzek/ringo"
  version "0.13.0"
  license "MIT"

  depends_on "spandsp"
  depends_on "opus"

  on_macos do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.13.0/ringo-0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "e39dd5bd9a4951c4194d61621f6a06a6d29be8424bdd7ecbbd7c15f49bc41d3a"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.13.0/ringo-0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "bc0c522ae26d8d6b745bd4f7701b9c23ed3351481ab105813162574d3f3e5725"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.13.0/ringo-0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a335d36dc5c16735e99ec9bf7de2f5d55319307177786044bf18977d158d649e"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.13.0/ringo-0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4e38fe00b69af5c9c1541abb64b8b44665eab13e86440231fe734f958d2d4595"
    end
  end

  def install
    bin.install "ringo"
  end

  test do
    system bin/"ringo", "--help"
  end
end
