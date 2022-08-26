class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.1.15"
    revision 1
    license "MIT"

    if OS.mac?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.15-1/poetry-bin-1.1.15-1-x86_64-apple-darwin.tar.gz"
        sha256 "9903c8809bfa57043b3bb624cd24713ff61dc7609ab9afd1ad824056aa25ddea"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.15-1/poetry-bin-1.1.15-1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "928221fbb1518be4dc63f12424412efc0c446c4cc34e32a8e3919fae8489cc63"
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
