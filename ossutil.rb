# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Ossutil< Formula
  desc "A user friendly command line tool to access AliCloud OSS."
  homepage "https://github.com/aliyun/ossutil"
  url "https://gosspublic.alicdn.com/ossutil/1.7.14/ossutil64"
  sha256 "d43bc2a26c9d6b923cf7f703b807fb043274e61ef3150601a361a74a2c81fad9"

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
