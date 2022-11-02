class Ossutil < Formula
  desc "A user friendly command line tool to access AliCloud OSS."
  homepage "https://github.com/aliyun/ossutil"
  version "1.7.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://gosspublic.alicdn.com/ossutil/1.7.14/ossutilmac64"
      sha256 "bbb2e73a80fa7d73cab9a7851160e12faa37519fbc1fb8d87b3c31dae8058da8"

      def install
        system 'mv ossutilmac64 ossutil'
        bin.install "ossutil"
      end
    end
    if Hardware::CPU.intel?
      url "https://gosspublic.alicdn.com/ossutil/1.7.14/ossutilmac64"
      sha256 "bbb2e73a80fa7d73cab9a7851160e12faa37519fbc1fb8d87b3c31dae8058da8"

      def install
        system 'mv ossutilmac64 ossutil'
        bin.install "ossutil"
      end
    end
  end

 

  test do
    system "#{bin}/ossutil", "-h"
  end
end
