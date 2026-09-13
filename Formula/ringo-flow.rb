class RingoFlow < Formula
  desc "Declarative telephony scenario test runner for baresip"
  homepage "https://github.com/davidborzek/ringo"
  version "0.14.3"
  license "MIT"

  depends_on "spandsp"
  depends_on "opus"

  on_macos do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.14.3/ringo-flow-0.14.3-aarch64-apple-darwin.tar.gz"
      sha256 "ddcede7aa77d9eec7e8be76e482895fe542c8f35841e1cc0947f29eda79f0dc0"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.14.3/ringo-flow-0.14.3-x86_64-apple-darwin.tar.gz"
      sha256 "881a67aa9d7356cfc95fe53a4e7b2e95e9a831fe67bf9eeb1a02210cb64ea1b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.14.3/ringo-flow-0.14.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "00a2dfed50ad4404e088469e15e94acc82cca1f2a19f7019c9e5cb30900eabd7"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.14.3/ringo-flow-0.14.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "63ad6450276ea1ce1655c05abf462dfe7a45e5cee26f4b66d6657f218f536aeb"
    end
  end

  def install
    bin.install "ringo-flow"
  end

  test do
    system bin/"ringo-flow", "--help"
  end
end
