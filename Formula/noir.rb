class Noir < Formula
    desc "CLI to Renoir templating engine"
    homepage "github.com/gi0baro/noir"
    version "0.3.3"
    license "BSD-3-Clause"

    if OS.mac?
        url "https://github.com/gi0baro/noir/releases/download/0.3.3/noir-0.3.3-darwin-x86_64.tar.gz"
        sha256 "58b4c85bd0945465def388e4ff9b79d8429b32251edcddb935532025d1faef04"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/noir/releases/download/0.3.3/noir-0.3.3-linux-x86_64.tar.gz"
        sha256 "c8969dd5c9288898c1a6eb09e10d215270689afbf2e4c4e87487ed4a83e6dff4"
    end

    def install
        bin.install "noir"
    end

    test do
        system "#{bin}/noir --version"
    end
end
