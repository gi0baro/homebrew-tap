class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.1.6"
    revision 3
    license "MIT"
    bottle :unneeded

    if OS.mac?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.6-3/poetry-bin-1.1.6-3-x86_64-apple-darwin.tar.gz"
        sha256 "71d7146b94b27c00793b2e17733fd6da1a0e46873f5299362e45349e86742af1"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.6-3/poetry-bin-1.1.6-3-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "404e9d2ff70270139c3b2951079886bb78ffa31c0d8a924c4ff7cd7c02aaf480"
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
