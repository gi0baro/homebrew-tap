class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.2.0"
    revision 1
    license "MIT"

    if OS.mac?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.2.0-1/poetry-bin-1.2.0-1-x86_64-apple-darwin.tar.gz"
        sha256 "e859356641cea53a2b8da5a9a8ecd66fc103e44c85822c1cac8b49b5005e04d0"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.2.0-1/poetry-bin-1.2.0-1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "21495bef67bb4ead72a6e1742ee7e7db5c22445ffa771cde01fa8ef683d18da9"
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
