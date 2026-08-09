class Forge < Formula
  desc "One source of truth for every AI tool your team uses"
  homepage "https://crucibledx.dev"
  version "0.6.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/crucibledx/forge-cli/releases/download/v#{version}/forge-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/crucibledx/forge-cli/releases/download/v#{version}/forge-darwin-x64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/crucibledx/forge-cli/releases/download/v#{version}/forge-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/crucibledx/forge-cli/releases/download/v#{version}/forge-linux-x64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forge --version")
  end
end
