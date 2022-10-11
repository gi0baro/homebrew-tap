class PoetryBin < Formula
    desc "Python package management tool (binary build)"
    homepage "github.com/gi0baro/poetry-bin"
    version "1.2.2"
    revision 1
    license "MIT"

    if OS.mac?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.2.2-1/poetry-bin-1.2.2-1-x86_64-apple-darwin.tar.gz"
        sha256 "6ec015b8823880051e7763e72cf7766a7f3d8cf04b50756ca2ff42ee830930d9"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/poetry-bin/releases/download/1.2.2-1/poetry-bin-1.2.2-1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "7a8f7373b801235d5dd3556bc7029eaccadb990ec464aac9e00b0e4342401774"
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
