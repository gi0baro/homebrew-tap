class Noir < Formula
    desc "CLI to Renoir templating engine"
    homepage "github.com/gi0baro/noir"
    version "0.3.4"
    license "BSD-3-Clause"

    if OS.mac?
        url "https://github.com/gi0baro/noir/releases/download/0.3.4/noir-0.3.4-darwin-x86_64.tar.gz"
        sha256 "758882b30a4ddddcca7ef1182da0d5d617d33bb97820056bab51ade480b47426"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/noir/releases/download/0.3.4/noir-0.3.4-linux-x86_64.tar.gz"
        sha256 "86bcc628c76a5aa787b7b35cf9f4421f4e79ac7e175e372eabf7361376edc28d"
    end

    def install
        bin.install "noir"
    end

    test do
        system "#{bin}/noir --version"
    end
end
