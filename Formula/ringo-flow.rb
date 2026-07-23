class RingoFlow < Formula
  desc "Declarative telephony scenario test runner for baresip"
  homepage "https://github.com/davidborzek/ringo"
  version "0.12.1"
  license "MIT"

  depends_on "spandsp"
  depends_on "opus"

  on_macos do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.12.1/ringo-flow-0.12.1-aarch64-apple-darwin.tar.gz"
      sha256 "cd2d0665af32e10fb7c4880b797eb4769e53069830727a43c5bd1d0d86486a9f"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.12.1/ringo-flow-0.12.1-x86_64-apple-darwin.tar.gz"
      sha256 "c670e14e3debf294ad08278c520e85e65c408ed668b9cf566971d3bdb6818927"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.12.1/ringo-flow-0.12.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "33f9b8cb5c8d294993fa2708cf5d58a188cafffc8686b23630414d3e921355d8"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.12.1/ringo-flow-0.12.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "efc3fa0d35b5c28b2d9cb1900b813e9bc589737ff4c4a74ba598e2a8fd7280a4"
    end
  end

  def install
    bin.install "ringo-flow"
  end

  test do
    system bin/"ringo-flow", "--help"
  end
end
