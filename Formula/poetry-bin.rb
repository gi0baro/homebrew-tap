class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.4.0"
    revision 2
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.4.0-2/poetry-bin-1.4.0-2-x86_64-apple-darwin.tar.gz"
        sha256 "8c0843ddc8dae7938bae84d456eaed9215a67d5212a99951b73ea178f805e19e"
    end
    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.4.0-2/poetry-bin-1.4.0-2-aarch64-apple-darwin.tar.gz"
        sha256 "65d76fbcb93c6cae15c86d088442c338dd66b6bace374f74bf0b98c753327cd6"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.4.0-2/poetry-bin-1.4.0-2-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "2053f7cea03514a8545a587fff3cb92193a53daf1b3124a5f49647522d0960f2"
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
