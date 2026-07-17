class RingoFlow < Formula
  desc "Declarative telephony scenario test runner for baresip"
  homepage "https://github.com/davidborzek/ringo"
  version "0.12.0"
  license "MIT"

  depends_on "spandsp"
  depends_on "opus"

  on_macos do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.12.0/ringo-flow-0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "6019d8d57ac88505dccecd7edc4270a4d8a5278974461b596c2a95d140c000a2"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.12.0/ringo-flow-0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "af66168fe0f686591aa5bdc73c95865c4b7320e48359d10348c928623eaa4c5e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.12.0/ringo-flow-0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "507e5e997851c6d0d073c05bc0eca2d754c59ad421c3e4acb6d1aa3f7fc89b8d"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.12.0/ringo-flow-0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e493dc329d4215b5ecc804dc754710f541799f7be0d79d4d4021e528c2327a40"
    end
  end

  def install
    bin.install "ringo-flow"
  end

  test do
    system bin/"ringo-flow", "--help"
  end
end
