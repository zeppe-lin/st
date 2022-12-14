ABOUT
-----
This directory contains *st*, a simple terminal emulator for X that is
based on Aurélien APTEL `<aurelien dot aptel at gmail dot com>` *bt*
source code.

This *st* distribution is a fork of suckless' *st* version 0.8.4 with
the following patches:
  * clipboard
  * copyurl
  * open copied url
  * vim browse
  * xresources

The original sources can be downloaded from:
  1. https://git.suckless.org/st                  (git)
  2. https://dl.suckless.org/st/st-0.8.4.tar.gz   (tarball)
  3. https://st.suckless.org/patches/             (applied patches)

REQUIREMENTS
------------
Build time:
  * c99 compiler
  * POSIX sh(1p), make(1p) and "mandatory utilities"
  * ncurses is optional, for compiling *terminfo* entry
  * libX11
  * fontconfig
  * freetype2

INSTALL
-------
The shell commands `make && make install` should build and install
this package.  See *config.mk* file for configuration parameters.

*st* can be customized by creating a custom *config.h* file and
(re)compiling the source code.

USAGE
-----
If you did not install *st* with `make && make install`, you must
compile the *st* terminfo entry with the following command:
```sh
tic -sx st.info
```
See `terminfo(5)` for additional details.

LICENSE
-------
*st* is licensed through MIT/X Consortium License.
See *LICENSE* file for copyright and license details.


<!-- vim:sw=2:ts=2:sts=2:et:cc=72:tw=70
End of file. -->
