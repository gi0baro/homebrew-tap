class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.1.6"
    revision 2
    license "MIT"
    bottle :unneeded

    if OS.mac?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.6-2/poetry-bin-1.1.6-2-x86_64-apple-darwin.tar.gz"
        sha256 "958c7fa7193a0505e61675290fd74d6f5dfe9227913f0cc4cae6316c66aa54f6"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.6-2/poetry-bin-1.1.6-2-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "5b3c7bc08672e8a1f474191ea1d551cccbfcb0db5880f6c2f220622e9f3ea981"
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
