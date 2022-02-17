class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.1.13"
    revision 1
    license "MIT"

    if OS.mac?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.13-1/poetry-bin-1.1.13-1-x86_64-apple-darwin.tar.gz"
        sha256 "2aa789b385b5eba181e7038a98aa533f51896a5302c0131123fde1b87d334293"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.13-1/poetry-bin-1.1.13-1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "5730c9809cf67e1fedae13cd744c788ffae0f25b7b6b1c6c7a3d44cbd62ea476"
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
