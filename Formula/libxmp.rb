require "formula"

class Libxmp < Formula
  homepage "http://xmp.sourceforge.net"
  url "https://downloads.sourceforge.net/project/xmp/libxmp/4.3.0/libxmp-4.3.0.tar.gz"
  sha1 "7cc6acef4d3b86b9073851649d1b5f6f4a904e43"

  bottle do
    cellar :any
    sha1 "bf5b171d0f271890d066dee22e07a9d1a8319286" => :mavericks
    sha1 "11616c4b632afb7fb5de9388cb2707f50dc154b3" => :mountain_lion
    sha1 "275c0e98a00fce621e1801ad70628bf0a13e0dac" => :lion
  end

  head do
    url "git://git.code.sf.net/p/xmp/libxmp"
    depends_on :autoconf
  end

  def install
    system "autoconf" if build.head?
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end
end
