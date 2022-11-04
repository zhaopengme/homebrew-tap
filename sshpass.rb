class Sshpass < Formula
  desc "sshpass with TOTP support"
  homepage "https://github.com/dora38/sshpass"
  version "1.09"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhaopengme/homebrew-tap/releases/download/0.0.1/sshpass"
      sha256 "bbb2e73a80fa7d73cab9a7851160e12faa37519fbc1fb8d87b3c31dae8058da8"

      def install
        bin.install "sshpass"
      end
    end
  end

 

  test do
    system "#{bin}/sshpass", "-h"
  end
end
