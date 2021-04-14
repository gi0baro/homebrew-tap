class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.1.6"
    revision 1
    license "MIT"
    bottle :unneeded

    if OS.mac?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.6-1/poetry-bin-1.1.6-1-x86_64-apple-darwin.tar.gz"
        sha256 "8ad29e3477027b30daaae912292795e2fb9eb1ba5abf570481a92fa0b84aadbb"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.6-1/poetry-bin-1.1.6-1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "f95648101eafd177b5270e66d43074b92e3d4460906331c521b3fa477e3cbd48"
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
