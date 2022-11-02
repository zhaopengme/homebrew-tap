# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Ossutil< Formula
  desc "A user friendly command line tool to access AliCloud OSS."
  homepage "https://github.com/aliyun/ossutil"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    #system "./configure", "--disable-debug",
    #                      "--disable-dependency-tracking",
    #                      "--disable-silent-rules",
    #                      "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    system 'pwd'
    system 'mv ossutilmac64 ossutil'
    bin.install "ossutil"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test aws-es-proxy-by-ec2`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/ossutil", "-h"
  end
end



class Ossutil < Formula
  desc "A user friendly command line tool to access AliCloud OSS."
  homepage "https://github.com/aliyun/ossutil"
  version "1.7.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.39.0/happy_0.39.0_darwin_arm64.tar.gz"
      sha256 "885a883f4dd1b6e4de86cbd549fab9b6ace83d9cb59dd96d0637801db4220368"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.39.0/happy_0.39.0_darwin_amd64.tar.gz"
      sha256 "ee9834ecfa63fe701c32aa32e0afaefe01c9ad1fe9fcb83814daf279717aa058"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.39.0/happy_0.39.0_linux_arm64.tar.gz"
      sha256 "f1f659f61a508f63d5d5f86fcc09500c9744027c585d6ef7c1877a8f795b4d04"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.39.0/happy_0.39.0_linux_amd64.tar.gz"
      sha256 "3d050d0bd6ad7897ac5ac267371ec27b33ca4f8656a9937dbd035650b3f6ffa8"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
