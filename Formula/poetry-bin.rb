class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.3.1"
    revision 2
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.3.1-2/poetry-bin-1.3.1-2-x86_64-apple-darwin.tar.gz"
        sha256 "279950563552ad58c222888b0b407ae5818a86e2d95ee968af65844b85a7c9d0"
    end
    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.3.1-2/poetry-bin-1.3.1-2-aarch64-apple-darwin.tar.gz"
        sha256 "f5892a03b9832f7994d5e35bf2626782a03cb34bed14292a1371d92caf3d597c"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.3.1-2/poetry-bin-1.3.1-2-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "9e32b925425fb9b55b116df2ee18e2bc95f74f8045250658ca9c909a68a489b0"
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
