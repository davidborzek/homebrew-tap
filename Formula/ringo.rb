class Ringo < Formula
  desc "A terminal SIP softphone built on baresip"
  homepage "https://github.com/davidborzek/ringo"
  version "0.16.1"
  license "MIT"

  depends_on "spandsp"
  depends_on "opus"

  on_macos do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.16.1/ringo-0.16.1-aarch64-apple-darwin.tar.gz"
      sha256 "75af4a73a4c063ac5c32a866d497bd79fefafe93aafc613118de131a163ec9aa"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.16.1/ringo-0.16.1-x86_64-apple-darwin.tar.gz"
      sha256 "f684afad55fb372bd1e3adde72cdd59be48eb3c3d5112d68ba7063fbd6e4c9e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.16.1/ringo-0.16.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cfa88874acc75d6ce8b10e60f25fca5417dff8dab09f9c0d3c7c935f82cf62d7"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-phone-v0.16.1/ringo-0.16.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c1e9b932131a36a1f4d357f2b606055647b091ff3126ab6cb8f12ad2cb305d88"
    end
  end

  def install
    bin.install "ringo"
  end

  test do
    system bin/"ringo", "--help"
  end
end
