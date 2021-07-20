class UnreliableFS < Formula
  version "0.2.0"
  desc "A FUSE-based fault injection filesystem"
  homepage "https://github.com/ligurio/unreliablefs"
  url "https://github.com/ligurio/unreliablefs/archive/refs/tags/0.2.0.tar.gz"
  sha256 "51ea2bdd0ef2b9d4e0960e244ab34d50d8f01fc8f2acb34b13d58ab9208b03f5"
  license "MIT"
  head "https://github.com/ligurio/unreliablefs"

  def install
    system "cmake ."
    system "make -j"
    bin.install "unreliablefs"
  end

  test do
    system bin/"unreliablefs", "-v"
  end
end
