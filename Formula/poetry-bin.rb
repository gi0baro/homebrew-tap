class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.1.10"
    revision 1
    license "MIT"
    bottle :unneeded

    if OS.mac?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.10-1/poetry-bin-1.1.10-1-x86_64-apple-darwin.tar.gz"
        sha256 "f87f00b82d73ab42f19ba37db20f76ec0817c00779f9bf4f43cd2fbb116d7806"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.10-1/poetry-bin-1.1.10-1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "4b37d99315d5ae9a16f573f1e6136d6657d6aca7064219240a519e9b1252dc07"
    end

    def install
        bin.install "bin/poetry"
        lib.install Dir["lib/*"]
        prefix.install Dir["assets"]
    end

    test do
        system "#{bin}/poetry --version"
    end
end
