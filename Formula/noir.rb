class Noir < Formula
    desc "CLI to Renoir templating engine"
    homepage "github.com/gi0baro/noir"
    version "0.6.1"
    license "BSD-3-Clause"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/noir/releases/download/0.6.1/noir-0.6.1-darwin-x86_64.tar.gz"
        sha256 "201679c7ddbcecd2dcb3851d4dabbeae2ba0c5cc0e826f9685ef82ca69590841"
    end
    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/gi0baro/noir/releases/download/0.6.1/noir-0.6.1-darwin-aarch64.tar.gz"
        sha256 "70a0a7c1e3f8c43b9b810bf6d14681ee18e0feca643fb82ebf0137bb47fbf283"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/noir/releases/download/0.6.1/noir-0.6.1-linux-x86_64.tar.gz"
        sha256 "02eb61ab1660d3c3c2a44a94da4f6f64cd6b58d0a8c0d625b00b3e6e1a350ada"
    end
    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/gi0baro/noir/releases/download/0.6.1/noir-0.6.1-linux-aarch64.tar.gz"
        sha256 "4cf8056e1e1467717719cb2f1c2adb9ae80ed1791d13ca22ede588e5a3b43863"
    end

    def install
        bin.install "noir"
    end

    test do
        system "#{bin}/noir --version"
    end
end
