class Noir < Formula
    desc "CLI to Renoir templating engine"
    homepage "github.com/gi0baro/noir"
    version "0.3.1"
    license "BSD-3-Clause"

    if OS.mac?
        url "https://github.com/gi0baro/noir/releases/download/0.3.1/noir-0.3.1-darwin-x86_64.tar.gz"
        sha256 "f8823e152cdd2b70ae146cc29e9216d296beb74df1e97fd75bae6511fa3b354d"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/noir/releases/download/0.3.1/noir-0.3.1-linux-x86_64.tar.gz"
        sha256 "cbb6df1a4970412fd1709c0f23554df965166db18f3e14a73aca2f5146863347"
    end

    def install
        bin.install "noir"
    end

    test do
        system "#{bin}/noir --version"
    end
end
