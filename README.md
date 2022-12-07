st - simple terminal emulator for X
===================================
st is a simple terminal emulator for X, based on Aurélien APTEL
<aurelien dot aptel at gmail dot com> bt source code.

This st distribution is a fork of suckless' st version 0.5.4 with the
following patches:
  * clipboard
  * copyurl
  * open copied url
  * vim browse
  * xresources

The original sources can be downloaded from:

  1. https://dl.suckless.org/st/st-0.8.4.tar.gz
  2. https://git.suckless.org/st
  3. https://st.suckless.org/patches/ (applied patches)

Dependencies
------------
Build time:
- c99 compiler
- make(1p), sh(1p) and other POSIX utilities like mkdir(1p), cp(1p),
  rm(1p)
- libX11
- fontconfig
- freetype2


Install
-------
The shell commands `make; make install` should build and install this
package.  See `config.mk` file for configuration parameters.

st can be customized by editing `config.h` and (re)compiling the
source code.


License and Copyright
---------------------
st is licensed through MIT/X Consortium License.
See LICENSE file for copyright and license details.


<!-- vim:ft=markdown:sw=2:ts=2:sts=2:et:cc=72:tw=70
End of file. -->
