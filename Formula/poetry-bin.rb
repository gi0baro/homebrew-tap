class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.1.6"
    revision 4
    license "MIT"
    bottle :unneeded

    if OS.mac?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.6-4/poetry-bin-1.1.6-4-x86_64-apple-darwin.tar.gz"
        sha256 "492acf88403b53780720ba8abcac7a75076902c750355f49d92ec4bec5c3eae0"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.1.6-4/poetry-bin-1.1.6-4-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "58142c3d8d582ece3a1d7a3299f6960c03c528ba4111ed17138608ab83371707"
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
