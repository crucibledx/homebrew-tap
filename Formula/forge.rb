class Forge < Formula
  desc "AI development environment setup & config sync CLI"
  homepage "https://github.com/crucibledx/forge-cli"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/crucibledx/forge-cli/releases/download/v0.7.0/forge-darwin-arm64.tar.gz"
      sha256 "8c4716057b60614fd4f078ddd28f216d0699a1bb92592e1ef0996df29669512b"
    else
      url "https://github.com/crucibledx/forge-cli/releases/download/v0.7.0/forge-darwin-x64.tar.gz"
      sha256 "96d0b1fd513a7aa81b78b350c546ff68149d4bc55e5824cf31afde3edcdcac49"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/crucibledx/forge-cli/releases/download/v0.7.0/forge-linux-arm64.tar.gz"
      sha256 "e44701e4b0af55a04dd8964697e480b15b0e1eb1db0bde0da357176ee0118429"
    else
      url "https://github.com/crucibledx/forge-cli/releases/download/v0.7.0/forge-linux-x64.tar.gz"
      sha256 "3a0b56bcb8d7825ee1d6939394e11cf52934dbfcd7de5065fd60e3383fbd9121"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forge --version")
  end
end
