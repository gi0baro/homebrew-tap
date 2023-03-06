class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.4.0"
    revision 1
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.4.0-1/poetry-bin-1.4.0-1-x86_64-apple-darwin.tar.gz"
        sha256 "b8c16f546f95f3a7b3e17073381c991055c1e0072e145e53700a946739c5af0d"
    end
    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.4.0-1/poetry-bin-1.4.0-1-aarch64-apple-darwin.tar.gz"
        sha256 "008642bf940fd24e98ade5c75a4480c3f337d1bcb10cd6c9c8085f983c384f44"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.4.0-1/poetry-bin-1.4.0-1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "45a0b1a3ec3a64ede2eb0c4a656b7bc63090663a5c671764201991db5e23ef46"
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
