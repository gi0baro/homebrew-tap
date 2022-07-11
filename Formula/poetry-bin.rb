class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.1.14"
    revision 1
    license "MIT"

    if OS.mac?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.14-1/poetry-bin-1.1.14-1-x86_64-apple-darwin.tar.gz"
        sha256 "08f9917e6eebe876aeb11c2bc3153c31e5282329b8d39fd14e054ae93e10ab99"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.14-1/poetry-bin-1.1.14-1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "911b59acd0896571c2d8bbd39b51ff8d73ed9ef34056dfd2546dd35895e43552"
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
