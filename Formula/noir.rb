class Noir < Formula
    desc "CLI to Renoir templating engine"
    homepage "github.com/gi0baro/noir"
    version "0.5.0"
    license "BSD-3-Clause"

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/noir/releases/download/0.5.0/noir-0.5.0-darwin-x86_64.tar.gz"
        sha256 "c57d3f16d42aa751fef35f6b550402ed999350a6da5f1292411f4aeb1b6427b8"
    end
    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/gi0baro/noir/releases/download/0.5.0/noir-0.5.0-darwin-aarch64.tar.gz"
        sha256 "0f92ae48b06d8b66c095c4d40f4daddcb44907c33ac77ad5be8ac2b727181cef"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/noir/releases/download/0.5.0/noir-0.5.0-linux-x86_64.tar.gz"
        sha256 "d45a8bcd1eb922440d3558c797e39675f9f07ab739c1c41f0e42fa5e6a5dfda3"
    end

    def install
        bin.install "noir"
    end

    test do
        system "#{bin}/noir --version"
    end
end
