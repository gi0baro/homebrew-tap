class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.5.1"
    revision 1
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.5.1-1/poetry-bin-1.5.1-1-x86_64-apple-darwin.tar.gz"
        sha256 "f9a5fdf1bd0526995047f8f7ab3fd821b7ffbb8c6bdc88c224ed9f3252f76f51"
    end
    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.5.1-1/poetry-bin-1.5.1-1-aarch64-apple-darwin.tar.gz"
        sha256 "5906a65f4149f5328fa0e35c61e7aff7c8f94cf3bc4ce693f13555d495f2f0d3"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.5.1-1/poetry-bin-1.5.1-1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "4a1b5580bd685bd596cf87281c34b6037eabe8f8bc37bc7a4445f384c0d4397f"
    end
    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.5.1-1/poetry-bin-1.5.1-1-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "56e318bab0b2989d64ecd16f29f719e270fc5edc0aad23e92cb5e8083188b62a"
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
