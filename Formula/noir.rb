class Noir < Formula
    desc "CLI to Renoir templating engine"
    homepage "github.com/gi0baro/noir"
    version "0.3.5"
    license "BSD-3-Clause"

    if OS.mac?
        url "https://github.com/gi0baro/noir/releases/download/0.3.5/noir-0.3.5-darwin-x86_64.tar.gz"
        sha256 "e6f556d71162b56cb1bf163861ce07b5f667258763d42f294ce2e18bcdaa7c44"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/noir/releases/download/0.3.5/noir-0.3.5-linux-x86_64.tar.gz"
        sha256 "5d8c9d6498f7d5763b95c5c7dd4466201491b284eec1ce1d7140eba674904ee7"
    end

    def install
        bin.install "noir"
    end

    test do
        system "#{bin}/noir --version"
    end
end
