class Forge < Formula
  desc "AI development environment setup & config sync CLI"
  homepage "https://github.com/crucibledx/forge-cli"
  version "0.6.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/crucibledx/forge-cli/releases/download/v0.6.22/forge-darwin-arm64.tar.gz"
      sha256 "e5cf211f5672db36420e6fdea5c8408a0dfe184772ebc0ea65188dda60172d7c"
    else
      url "https://github.com/crucibledx/forge-cli/releases/download/v0.6.22/forge-darwin-x64.tar.gz"
      sha256 "9c04bdc67d785b2691f8626c874e7ffdf98a8e467265d1ecc32cd05b73c11c5e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/crucibledx/forge-cli/releases/download/v0.6.22/forge-linux-arm64.tar.gz"
      sha256 "8cbf7ae90f2d22c4adb5343acfd040ba60bb58e88c0d9e6417d9ec8ce9ec544a"
    else
      url "https://github.com/crucibledx/forge-cli/releases/download/v0.6.22/forge-linux-x64.tar.gz"
      sha256 "ff5a3e84a5f6b530fbe1ecd089d15777bda3278b1788a0cee46154a851cf6546"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forge --version")
  end
end
