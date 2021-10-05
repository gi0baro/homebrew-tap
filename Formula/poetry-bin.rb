class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.1.11"
    revision 1
    license "MIT"
    bottle :unneeded

    if OS.mac?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.11-1/poetry-bin-1.1.11-1-x86_64-apple-darwin.tar.gz"
        sha256 "e480e46233bd71b7cd72ef113b8bdd684463c3534b66b0990611195b7df6b16c"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.11-1/poetry-bin-1.1.11-1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "101e0826472cf18e0bd675d6a7b0209c84c011d49af2204cbfd98bbceeded7b9"
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
