class RingoMcp < Formula
  desc "MCP server over stdio exposing ringo SIP agents for LLM-driven telephony"
  homepage "https://github.com/davidborzek/ringo"
  version "0.1.0"
  license "MIT"

  depends_on "spandsp"
  depends_on "opus"

  on_macos do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-mcp-v0.1.0/ringo-mcp-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "04ac0ae23bfbadc0d089ac9ab2b954ae2a3914cbcf1a4d76f2a6fbec7cb488bc"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-mcp-v0.1.0/ringo-mcp-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "e2b3a7ac22adf11d035de4a9851c1d2907afecf57e541650f1d5bce95194c92f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-mcp-v0.1.0/ringo-mcp-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6d07a1c5efa16e16c4f8cab8aae91cb34d00072cdcc8bedf98119e71093e8473"
    end
    on_intel do
      url "https://github.com/davidborzek/ringo/releases/download/ringo-mcp-v0.1.0/ringo-mcp-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ce885bf74b4e8d064cf9b2a3ad3d8320194c732f444843acee1d6254f5b7f51c"
    end
  end

  def install
    bin.install "ringo-mcp"
  end

  test do
    system bin/"ringo-mcp", "--version"
  end
end
