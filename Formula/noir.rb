class Noir < Formula
    desc "CLI to Renoir templating engine"
    homepage "github.com/gi0baro/noir"
    version "0.4.0"
    license "BSD-3-Clause"

    if OS.mac?
        url "https://github.com/gi0baro/noir/releases/download/0.4.0/noir-0.4.0-darwin-x86_64.tar.gz"
        sha256 "d5c665883554322f65d114a3d091b2c25d11436985d96d9a36ee32f9d086eca1"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/noir/releases/download/0.4.0/noir-0.4.0-linux-x86_64.tar.gz"
        sha256 "92cb5963ac5c82d8d7e473f050a0abe786a1c0413850f2f15e20cd5805d634c4"
    end

    def install
        bin.install "noir"
    end

    test do
        system "#{bin}/noir --version"
    end
end
