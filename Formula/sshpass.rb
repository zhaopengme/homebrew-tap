class Sshpass < Formula
  url "https://github.com/zhaopengme/homebrew-tap/releases/download/0.0.1/sshpass"
  sha256 "956dd46a9c12178bcebbe28adf3b1d90862d9762e5ebcd7e88e92ccaebbcc249"

  def install
    bin.install "sshpass"
  end
end
