require 'formula'

class Libxmp < Formula
  homepage 'http://xmp.sourceforge.net'
  url 'http://downloads.sourceforge.net/project/xmp/libxmp/4.2.1/libxmp-4.2.1.tar.gz'
  sha1 '0c511b366910bfbc92bcccfd20546001fbc05623'

  head do
    url 'git://git.code.sf.net/p/xmp/libxmp'
    depends_on :autoconf
  end

  def install
    system "autoconf" if build.head?
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end
end
