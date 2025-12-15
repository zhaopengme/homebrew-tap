class Cce < Formula
  desc "Claude Config Environment - manage multiple Claude API providers"
  homepage "https://github.com/zhaopengme/cce"
  version "0.2.7"

  url "https://github.com/zhaopengme/cce/releases/download/v0.2.7/cce-macos-aarch64.tar.gz"
  sha256 "03cc634dfda9fa8eff89a44c084910678c4961a1e633f4e38c494fb2696a455d"

  def install
    bin.install "cce"
  end

  test do
    system "#{bin}/cce", "--version"
  end
end
