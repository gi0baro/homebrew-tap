class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.7.0"
    revision 1
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.7.0-1/poetry-bin-1.7.0-1-x86_64-apple-darwin.tar.gz"
        sha256 "0fa8583de7ac256182be03d2346a7909afe6979558e14a26a04a6d5726977005"
    end
    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.7.0-1/poetry-bin-1.7.0-1-aarch64-apple-darwin.tar.gz"
        sha256 "b529726b5d32cabd353f09da31b680059868d80e46dfeb5cc83c75e4d0ae969d"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.7.0-1/poetry-bin-1.7.0-1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "03ee204da7cd2161e6a7ae6041b129f9f1f62ec713d42879babfcc8ee22b05c6"
    end
    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.7.0-1/poetry-bin-1.7.0-1-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "8cb1d92e6bd2e0a7604d38e3efe3d875c3d37a1d45230fe8f2517b6832a622f7"
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
