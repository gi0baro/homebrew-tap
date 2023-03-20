class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.4.1"
    revision 1
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.4.1-1/poetry-bin-1.4.1-1-x86_64-apple-darwin.tar.gz"
        sha256 "c34785f6ad8b044cd320103de00eb63403689741a4fabec20ea2066a77fb9e6e"
    end
    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.4.1-1/poetry-bin-1.4.1-1-aarch64-apple-darwin.tar.gz"
        sha256 "75b287dcd39bbaccf74b92d21523fef16e13f1fe8af198da51556965608ec077"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.4.1-1/poetry-bin-1.4.1-1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "a4e66b55ee26ca1e23d7fe823f1e103afcd29dddacc26fc56d9ed1ab086ee87b"
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
