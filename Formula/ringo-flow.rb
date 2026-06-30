class RingoFlow < Formula
  desc "Declarative telephony scenario test runner for baresip"
  homepage "https://github.com/davidborzek/ringo"
  version "0.11.1"
  license "MIT"

  depends_on "spandsp"
  depends_on "opus"

  on_macos do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.11.1/ringo-flow-0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "85afead987a103a3ef6253dbcf727d1c705343d2edabc09cb5b9f9a353419b4d"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.11.1/ringo-flow-0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "e2cb5bb4f4fda939694fbdb3d8253042b8b46c76c64a4c34840451f2cc3aecbc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.11.1/ringo-flow-0.11.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "98b4f339c2f737c2af9be9ef69e7d659be6013fd9f6371714bc7cbc7426e729a"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-flow-v0.11.1/ringo-flow-0.11.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "03c104a4ed16cf125d22b1f68393f6eb3b5c25bd1a5543a565db5adb984a9708"
    end
  end

  def install
    bin.install "ringo-flow"
  end

  test do
    system bin/"ringo-flow", "--help"
  end
end
