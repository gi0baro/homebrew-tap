class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.3.1"
    revision 3
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.3.1-3/poetry-bin-1.3.1-3-x86_64-apple-darwin.tar.gz"
        sha256 "ff16d739cceb7d5ff33fb6788eda07c607eb4bad4856ac4622cb58b92bf8b949"
    end
    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.3.1-3/poetry-bin-1.3.1-3-aarch64-apple-darwin.tar.gz"
        sha256 "2182aba901a880b697371583f1d4035a35e0b70dd0761a349ac9b846dee21f80"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.3.1-3/poetry-bin-1.3.1-3-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "2621b26fb569c65c6101f5cd7072c2478523f3943205d525930df39b89774c19"
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
