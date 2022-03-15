class Noir < Formula
    desc "CLI to Renoir templating engine"
    homepage "github.com/gi0baro/noir"
    version "0.3.2"
    license "BSD-3-Clause"

    if OS.mac?
        url "https://github.com/gi0baro/noir/releases/download/0.3.2/noir-0.3.2-darwin-x86_64.tar.gz"
        sha256 "638583160f63e03d679dbe8200f320b2a22f1810a0c81227a36883beb3b9ce10"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/noir/releases/download/0.3.2/noir-0.3.2-linux-x86_64.tar.gz"
        sha256 "929cb4c7d5afc7aa3ab721c7fa47bd05ba1f5b484d25905cf2475c9a8de0e1ac"
    end

    def install
        bin.install "noir"
    end

    test do
        system "#{bin}/noir --version"
    end
end
