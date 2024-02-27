class PoetryBinAT17 < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.7.1"
    revision 1
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.7.1-1/poetry-bin-1.7.1-1-x86_64-apple-darwin.tar.gz"
        sha256 "8a310b011dab2e2cd8f7cdadc62c59643e8f936667fccc904b21a11e76f79e92"
    end
    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.7.1-1/poetry-bin-1.7.1-1-aarch64-apple-darwin.tar.gz"
        sha256 "09551d92d1aae03de7f129e4e8185b6884b783e34aa8475f84e599d909f732ef"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.7.1-1/poetry-bin-1.7.1-1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "bea7be56b37f5e044d79858ccbdd26d4d0879998bbc8b63f2e7ce3797eb30128"
    end
    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.7.1-1/poetry-bin-1.7.1-1-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "7580b5f96e9f12ee89c2626bf995fd614445e6ba4dd65a3bd866dfd329cacf66"
    end

    keg_only :versioned_formula

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
