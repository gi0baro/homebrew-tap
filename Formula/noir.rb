class Noir < Formula
    desc "CLI interface to Renoir templating engine"
    homepage "github.com/gi0baro/noir"
    version "0.1.1"
    license "BSD-3-Clause"
    bottle :unneeded

    if OS.mac?
        url "https://github.com/gi0baro/noir/releases/download/0.1.1/noir-0.1.1-darwin-x86_64.tar.gz"
        sha256 "6d7e189c8b634f633fdbd953fd65126dc74e11845c10327bd9f640c7681ca5d0"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/noir/releases/download/0.1.1/noir-0.1.1-linux-x86_64.tar.gz"
        sha256 "99019b50c1cbb7eb9527d650a98526351f34e1312c7899c7dbbadd23a7b07a0f"
    end

    def install
        bin.install "noir"
    end

    test do
        system "#{bin}/noir --version"
    end
end
