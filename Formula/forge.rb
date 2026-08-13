class Forge < Formula
  desc "AI development environment setup & config sync CLI"
  homepage "https://github.com/crucibledx/forge-cli"
  version "0.6.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/crucibledx/forge-cli/releases/download/v0.6.24/forge-darwin-arm64.tar.gz"
      sha256 "1ff8340cf79ff82a259cb5da21b3931db435a632b2bd24a9cd590bc92676a317"
    else
      url "https://github.com/crucibledx/forge-cli/releases/download/v0.6.24/forge-darwin-x64.tar.gz"
      sha256 "65b320c34faaa638a4487c9b77a24e23cbbc28cc3822919283cc65dd69593cd8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/crucibledx/forge-cli/releases/download/v0.6.24/forge-linux-arm64.tar.gz"
      sha256 "a10d216d266e65dd3f9326387ee298cf99d57f5271fc52f103a210d3dbbf7575"
    else
      url "https://github.com/crucibledx/forge-cli/releases/download/v0.6.24/forge-linux-x64.tar.gz"
      sha256 "603c9d202ba4adecc8982d86db819680493ce23fcd888d106cda5ccfdfcd3a7c"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forge --version")
  end
end
