class Noir < Formula
    desc "CLI to Renoir templating engine"
    homepage "github.com/gi0baro/noir"
    version "0.6.0"
    license "BSD-3-Clause"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/noir/releases/download/0.6.0/noir-0.6.0-darwin-x86_64.tar.gz"
        sha256 "a4140062457adebdc67eccf45b0e5dac912ba79a90d299355f029e4b0b6313e9"
    end
    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/gi0baro/noir/releases/download/0.6.0/noir-0.6.0-darwin-aarch64.tar.gz"
        sha256 "1ef8da7d9b654b1b94e06f0cabfa3f5957d144aa2c4670726e4f089d2505ba3f"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/noir/releases/download/0.6.0/noir-0.6.0-linux-x86_64.tar.gz"
        sha256 "bc273ba6cff4e138784be06a783ebf4b23715b41c607ac4c446dd1d5a515785f"
    end
    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/gi0baro/noir/releases/download/0.6.0/noir-0.6.0-linux-aarch64.tar.gz"
        sha256 "9eb32b71a6c65bd856c34d7d153d1771213da1cf4e4b219279595c273c2d8cb8"
    end

    def install
        bin.install "noir"
    end

    test do
        system "#{bin}/noir --version"
    end
end
