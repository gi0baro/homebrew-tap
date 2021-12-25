class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.1.12"
    revision 4
    license "MIT"

    if OS.mac?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.12-4/poetry-bin-1.1.12-4-x86_64-apple-darwin.tar.gz"
        sha256 "9c8b946c7b0d5e37ec191c9ff288dc3ef3865939e02b36d075f38a7199405578"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.12-4/poetry-bin-1.1.12-4-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "bdd6e9c8f52ddaf71d3ddbbafa3d84b0fc7f4cb063b68f2744adae7bbcd6b68f"
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
