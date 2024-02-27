class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.8.1"
    revision 1
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.8.1-1/poetry-bin-1.8.1-1-x86_64-apple-darwin.tar.gz"
        sha256 "99833c2dfe683040f9d09c28ac0ca047b5b86312051917d27ea2b6fddb095e93"
    end
    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.8.1-1/poetry-bin-1.8.1-1-aarch64-apple-darwin.tar.gz"
        sha256 "6d35e977ab4c5c75027e9d8eb20cb8901c2a06a2bb1623b5a51a228f0d02f42f"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.8.1-1/poetry-bin-1.8.1-1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "55fff93bc66a1ed87fce19c13178173bd08c0eea4f7b9ba452c0b17e141d6b5b"
    end
    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.8.1-1/poetry-bin-1.8.1-1-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "61650f272f7aa29763ee567f23e5ba89be8894797010a86ce1793529a25a974f"
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
