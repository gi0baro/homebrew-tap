class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.8.3"
    revision 1
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.8.3-1/poetry-bin-1.8.3-1-x86_64-apple-darwin.tar.gz"
        sha256 "d623abbfa0f114ed467cb68e3f14c0d25ca15901f63e45b63aad80c9d2b24437"
    end
    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.8.3-1/poetry-bin-1.8.3-1-aarch64-apple-darwin.tar.gz"
        sha256 "786f879ae28ad3080b17a7ce3061a3aba4a2f79eca891400bfb93eb144dbbdb5"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.8.3-1/poetry-bin-1.8.3-1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "b54fc93d7488319cd8d087b9b2ffcd4b46ef8eda838757b2038ea52c13beb0ee"
    end
    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.8.3-1/poetry-bin-1.8.3-1-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "b7bf7e94af79f4f9f3f890ab484ed31968477d500bacb92a5a8229681ba768de"
    end

    def install
        bin.install "poetry"
        lib.install Dir["lib/*"]
        prefix.install Dir["assets"]

        bin.install_symlink lib
        bin.install_symlink prefix/"assets"
    end

    test do
        system "#{bin}/poetry --version"
    end
end
