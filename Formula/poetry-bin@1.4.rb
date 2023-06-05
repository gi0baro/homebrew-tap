class PoetryBinAT14 < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.4.2"
    revision 1
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.4.2-1/poetry-bin-1.4.2-1-x86_64-apple-darwin.tar.gz"
        sha256 "d720d4643fe3d713126e526b61046570418fe1a354172896efaeef2fc37b5b26"
    end
    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.4.2-1/poetry-bin-1.4.2-1-aarch64-apple-darwin.tar.gz"
        sha256 "0f10f02e2170b025f729c0592451c197323fb1da70626c880afa99d908093b0d"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.4.2-1/poetry-bin-1.4.2-1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "60a54a58f70b2e3e7d8ec4e18a0a0c3ad62ed5769d89f248169964316fa378b0"
    end

    keg_only :versioned_formula

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
