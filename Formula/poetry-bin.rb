class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.1.7"
    revision 1
    license "MIT"
    bottle :unneeded

    if OS.mac?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.7-1/poetry-bin-1.1.7-1-x86_64-apple-darwin.tar.gz"
        sha256 "b9a998accf28848c4105da33b1c025f3f7a5c6cfcd3fe0393e648bcd0b9bf195"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.7-1/poetry-bin-1.1.7-1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "1bcb9da18b345a577e294740e419e26dcd9315149caf11bdfe592f5d3016180a"
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
