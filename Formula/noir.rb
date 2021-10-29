class Noir < Formula
    desc "CLI to Renoir templating engine"
    homepage "github.com/gi0baro/noir"
    version "0.3.0"
    license "BSD-3-Clause"

    if OS.mac?
        url "https://github.com/gi0baro/noir/releases/download/0.3.0/noir-0.3.0-darwin-x86_64.tar.gz"
        sha256 "2e509d0ac72f4c39f4c1569f9a71bc891974dfd7eb28826db33d3302d3162a31"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/noir/releases/download/0.3.0/noir-0.3.0-linux-x86_64.tar.gz"
        sha256 "e203128db447ccfb8a1dbf508ea30cd7b7cbf14cc176f4e5788933a36e508a1b"
    end

    def install
        bin.install "noir"
    end

    test do
        system "#{bin}/noir --version"
    end
end
