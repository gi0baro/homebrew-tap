class Noir < Formula
    desc "CLI interface to Renoir templating engine"
    homepage "github.com/gi0baro/noir"
    version "0.1.0"
    license "BSD-3-Clause"
    bottle :unneeded

    if OS.mac?
        url "https://github.com/gi0baro/noir/releases/download/0.1.0/noir-0.1.0-darwin-x86_64.tar.gz"
        sha256 "c606367d4c37240cbf4f0ff7fa0ac3aa3ed8d21f0a13836bae21c5e706b7adf7"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/noir/releases/download/0.1.0/noir-0.1.0-linux-x86_64.tar.gz"
        sha256 "1cd6fbb56ea86aa0eee38782067e2a99cf21243cbb493d82f825f81a663fb318"
    end

    def install
        bin.install "noir"
    end

    test do
        system "#{bin}/noir --version"
    end
end
