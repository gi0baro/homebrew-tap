class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.6.0"
    revision 1
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.6.0-1/poetry-bin-1.6.0-1-x86_64-apple-darwin.tar.gz"
        sha256 "e11435fbebc0b3e3408fb67491167ce8512c7a7a009e58140ecdc5f72f56b2cb"
    end
    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.6.0-1/poetry-bin-1.6.0-1-aarch64-apple-darwin.tar.gz"
        sha256 "3a4732c7c2872184e8e88e97ea7ac50a8f7679e7bcf6c9a7a0176717940c08a5"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.6.0-1/poetry-bin-1.6.0-1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "1c7a7de4ff305263fbc5471916eba8479d463236a0fe36b963e9de7c8d44e20b"
    end
    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.6.0-1/poetry-bin-1.6.0-1-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "3ef20a32f8ee0629f7de083cf6ee4ffe62134667119d08f3d53b27e01e7989b4"
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
