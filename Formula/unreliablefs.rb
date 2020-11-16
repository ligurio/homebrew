class UnreliableFS < Formula
  version "0.0.5"
  desc "A FUSE-based fault injection filesystem"
  homepage "https://github.com/ligurio/unreliablefs"
  url ""
  sha256 "a86050fb98e9ecd7e8421e7cc1a225ce59b77d6264947cb8cdbc7699c142ace0"

  def install
    system "cmake ."
    system "make -j"
    bin.install "unreliablefs"
  end

  test do
    system bin/"unreliablefs", "-v"
  end
end
