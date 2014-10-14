require 'formula'

class Glpk < Formula
  homepage 'http://www.gnu.org/software/glpk/'
  url 'http://ftpmirror.gnu.org/glpk/glpk-4.55.tar.gz'
  mirror 'http://ftp.gnu.org/gnu/glpk/glpk-4.55.tar.gz'
  sha1 '893058aada022a8dfc63c675ebcd7e7e86a3a363'
  
  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make"
    system "make check"
    system "make install"
    # These files are needed to use the old LPX API.
    include.install "examples/oldapi/lpx.h","examples/oldapi/lpx.c"
  end
end
