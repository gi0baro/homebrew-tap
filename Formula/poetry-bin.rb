class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.3.2"
    revision 1
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.3.2-1/poetry-bin-1.3.2-1-x86_64-apple-darwin.tar.gz"
        sha256 "50a7c1f49f018c433083a9ad5c7d94b84011d90babe03bcd183b3c233130a7f9"
    end
    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.3.2-1/poetry-bin-1.3.2-1-aarch64-apple-darwin.tar.gz"
        sha256 "1a544e08790a15e8b4162410fff3f90924a29623448d24f0fe33f7d369847b56"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.3.2-1/poetry-bin-1.3.2-1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "4a45a823f2038ccd59b9ccd9a9073ba53f177330e18e30b7fee2a622126a0815"
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
