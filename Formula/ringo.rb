class Ringo < Formula
  desc "A terminal SIP softphone built on baresip"
  homepage "https://github.com/davidborzek/ringo"
  version "0.11.0"
  license "MIT"

  depends_on "spandsp"
  depends_on "opus"

  on_macos do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.11.0/ringo-0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "abd039a2f3777a0337c47698e0966746382bd0b85671895c72e2bf9fac280d3d"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.11.0/ringo-0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "e4fafc5115fdd51a39ca06861392c3df52b172e994e52c41dcb73f77e7143ce2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.11.0/ringo-0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b7bd859dcca38dded32993ef4086a4069560f59dc35f53194cd89e118d04eb46"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.11.0/ringo-0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a5749848efd0dbadccca09f93c0ff00bb96c3dfaf10550f37f6e560aab539be0"
    end
  end

  def install
    bin.install "ringo"
  end

  test do
    system bin/"ringo", "--help"
  end
end
