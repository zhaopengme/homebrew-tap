class Sshpass < Formula
  desc "sshpass with TOTP support"
  homepage "https://github.com/dora38/sshpass"
  version "1.09"
  sha256 :no_check # required as upstream package is updated in-place

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhaopengme/homebrew-tap/releases/download/0.0.1/sshpass"

      def install
        bin.install "sshpass"
      end
    end
  end

 

  test do
    system "#{bin}/sshpass", "-h"
  end
end
