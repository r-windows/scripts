#!/bin/sh
rm -Rf mingw32 mingw64
mkdir -p {mingw32,mingw64}
(cd mingw32; 
  curl -OL http://dl.bintray.com/rtools/mingw32/mingw32.db;
  curl -OL http://dl.bintray.com/rtools/mingw32/mingw32.files;
  pacman -Syyw --noconfirm --cache=. $(pacman -Slq | grep mingw-w64-i686))
(cd mingw64;
  curl -OL http://dl.bintray.com/rtools/mingw64/mingw64.db;
  curl -OL http://dl.bintray.com/rtools/mingw64/mingw64.files;
  pacman -Syyw --noconfirm --cache=. $(pacman -Slq | grep mingw-w64-x86_64))

#scp -r mingw32 ftp.opencpu.org:~/
#scp -r mingw64 ftp.opencpu.org:~/
