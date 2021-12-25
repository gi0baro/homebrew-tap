class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.1.12"
    revision 3
    license "MIT"

    if OS.mac?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.12-3/poetry-bin-1.1.12-3-x86_64-apple-darwin.tar.gz"
        sha256 "710ebec6c2d77d301152676ccd70100820120b97cac0e80d895ef0f7ce3c1a64"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.12-3/poetry-bin-1.1.12-3-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "51adff95589f9a21dc81d44c7ed77b17a689570389dc600cb4a94dd681301c79"
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
