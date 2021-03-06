require 'formula'

class Lastfmlib < Formula
  head 'git://github.com/eartle/liblastfm.git'
  url 'http://cdn.last.fm/client/liblastfm-1.0.1.tar.gz'
  md5 '77fb72721e6e027d73110a8f66191cca'

  depends_on 'cmake'
  depends_on 'qt'

  def install
    system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
