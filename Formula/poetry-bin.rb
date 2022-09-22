class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.2.1"
    revision 1
    license "MIT"

    if OS.mac?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.2.1-1/poetry-bin-1.2.1-1-x86_64-apple-darwin.tar.gz"
        sha256 "1ecc93734c2b1c15f5074e05190b2fddf30292f938838a425a13f5fb9e817ff0"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.2.1-1/poetry-bin-1.2.1-1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "97c43607e1bca15b125c1fdafa15de9ba9ff18942e44b4bce2c4918baf2ae56f"
    end

    def install
        bin.install "poetry"
        lib.install Dir["lib/*"]
        prefix.install Dir["assets"]

        bin.install_symlink lib
        bin.install_symlink prefix/"assets"
    end

    test do
        system "#{bin}/poetry --version"
    end
end
