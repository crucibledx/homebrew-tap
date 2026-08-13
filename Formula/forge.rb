class Forge < Formula
  desc "AI development environment setup & config sync CLI"
  homepage "https://github.com/crucibledx/forge-cli"
  version "0.6.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/crucibledx/forge-cli/releases/download/v0.6.23/forge-darwin-arm64.tar.gz"
      sha256 "374711f6dbb5988ec26754013e7aa3e483a0a3bd4dc6ccda6ca67fa4d034895a"
    else
      url "https://github.com/crucibledx/forge-cli/releases/download/v0.6.23/forge-darwin-x64.tar.gz"
      sha256 "905baa7424d749424f32a649a5c64516d56613d37b055e33192b88f2dba0dfc9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/crucibledx/forge-cli/releases/download/v0.6.23/forge-linux-arm64.tar.gz"
      sha256 "1bf6b56bbf0fa6e586a20c8ce250ae14f4672f27e606151e3e844acd820dc3c0"
    else
      url "https://github.com/crucibledx/forge-cli/releases/download/v0.6.23/forge-linux-x64.tar.gz"
      sha256 "a8177f582871fa9442f797b5550673bbfc31a7088e5cc89c806296b2fad86554"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forge --version")
  end
end
