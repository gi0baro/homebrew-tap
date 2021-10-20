class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.1.11"
    revision 1
    license "MIT"
    bottle :unneeded

    if OS.mac?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.11-2/poetry-bin-1.1.11-2-x86_64-apple-darwin.tar.gz"
        sha256 "472489c203ebab7aed5ee6f3185664617a02c08466697ca7374f079a2cab8017"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.11-2/poetry-bin-1.1.11-2-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "17b310abbdae01dccea7ab8f81727a810d3e97c277257b833bc05b7bcc495bb5"
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
