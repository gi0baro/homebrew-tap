class Noir < Formula
    desc "CLI interface to Renoir templating engine"
    homepage "github.com/gi0baro/noir"
    version "0.2.0"
    license "BSD-3-Clause"
    bottle :unneeded

    if OS.mac?
        url "https://github.com/gi0baro/noir/releases/download/0.2.0/noir-0.2.0-darwin-x86_64.tar.gz"
        sha256 "5bd225f1391593c20df671f9b79baf6ea1365694458cb40fc1c87639723cbb9f"
    end
    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/gi0baro/noir/releases/download/0.2.0/noir-0.2.0-linux-x86_64.tar.gz"
        sha256 "7462c732ccb555e5ffbded1407fb7434aa7c49a023d6683ef6836e3742557131"
    end

    def install
        bin.install "noir"
    end

    test do
        system "#{bin}/noir --version"
    end
end
