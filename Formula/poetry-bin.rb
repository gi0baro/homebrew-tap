class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.3.1"
    revision 1
    license "MIT"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.3.1-1/poetry-bin-1.3.1-1-x86_64-apple-darwin.tar.gz"
        sha256 "11129d35ebaebf6ca297017d1305f93532cb81dd0d194d322290b948d8e6b065"
    end
    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.3.1-1/poetry-bin-1.3.1-1-aarch64-apple-darwin.tar.gz"
        sha256 "824f61455985f356e7e4a53ed9719eb2c93c1ad71bae76fbb870b25a7cfe9fd2"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.3.1-1/poetry-bin-1.3.1-1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "1584aafc076d86d23af24882488ab9eabce0a460b5ee1c90e88cffb5639e0d04"
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
