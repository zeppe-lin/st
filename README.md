OVERVIEW
========

This directory contains st, a simple terminal emulator for X that is based on
Aurélien APTEL (`<aurelien dot aptel at gmail dot com>`) bt source code.

This st distribution is a fork of suckless' st version 0.8.4 with the following
patches:

- clipboard
- copyurl
- open copied url
- vim browse
- xresources

See git log for further differences.

The original sources can be downloaded from:
1. https://git.suckless.org/st                 (git)
2. https://dl.suckless.org/st/st-0.8.4.tar.gz  (tarball)
3. https://st.suckless.org/patches/            (patches)


REQUIREMENTS
============

Build time
----------
- C99 compiler
- POSIX sh(1p), make(1p) and "mandatory utilities"
- libX11
- fontconfig
- freetype2
- ncurses is optional, for compiling terminfo entry


INSTALL
=======

The shell commands `make && make install` should build and install this
package.  See `config.mk` file for configuration parameters.

st can be customized by creating a custom `config.h` file and (re)compiling the
source code.


BUGS
====

If you find a program that complains that st is unknown/not
recognised/unsupported/etc, try to compile the st terminfo entry with the
following command:

```sh
tic -sx st.info
```

Also, by the following make target:

```sh
make terminfo-entry
```

See terminfo(5) for additional details.


LICENSE
=======

st is licensed through MIT/X Consortium License.
See LICENSE file for copyright and license details.
