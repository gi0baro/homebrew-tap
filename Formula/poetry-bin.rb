class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.1.12"
    revision 1
    license "MIT"

    if OS.mac?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.12-1/poetry-bin-1.1.12-1-x86_64-apple-darwin.tar.gz"
        sha256 "be8917ead7c0da2cb5e275bc9baa298bb13447a02f1e659e7bb03e726e63e470"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.12-1/poetry-bin-1.1.12-1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "172edd60a3f7d948acf1ea00da4b6b4fef08ae249275a2356706678c95a15d55"
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
