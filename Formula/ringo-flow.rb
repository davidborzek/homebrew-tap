class RingoFlow < Formula
  desc "Declarative telephony scenario test runner for baresip"
  homepage "https://github.com/davidborzek/ringo"
  version "0.10.1"
  license "MIT"

  depends_on "baresip"

  on_macos do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.10.1/ringo-flow-aarch64-apple-darwin"
      sha256 "d378f4a7fc4103e0e43293499f760364e625f2397d9e8d60eba94b1392470b4c"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.10.1/ringo-flow-x86_64-apple-darwin"
      sha256 "b518872f2cf68e6dae90d50ba6dc46ed6ac065fb97df976399b24ccf4ab7671a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.10.1/ringo-flow-aarch64-unknown-linux-gnu"
      sha256 "3a31860e83a2ecd3c29b52af126f0732f3ae2360ad5626693418a7388471e8f8"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.10.1/ringo-flow-x86_64-unknown-linux-gnu"
      sha256 "0af675726c98533bace13cfc2532d3c8beea1286d0c908d039679fa9656e3663"
    end
  end

  def install
    bin.install Dir["ringo-flow-*"].first => "ringo-flow"
  end

  test do
    system bin/"ringo-flow", "--help"
  end
end
