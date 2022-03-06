class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.1.13"
    revision 2
    license "MIT"

    if OS.mac?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.13-2/poetry-bin-1.1.13-2-x86_64-apple-darwin.tar.gz"
        sha256 "3d0889f26479cc4cafc8f1c8a5e656c1eee08a497844d6d03f1b219fd411601e"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.13-2/poetry-bin-1.1.13-2-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "1bb04b6b0944cfcea3d978902c7884c2c40078693ff81a1ab22061b9659daa7f"
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
