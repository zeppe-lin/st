# project metadata
NAME      = st
VERSION   = 0.8.5z1
DIST      = ${NAME}-${VERSION}

# paths
PREFIX    = /usr/local
MANPREFIX = ${PREFIX}/share/man

# DragonFlyBSD, FreeBSD
#X11INC   = /usr/local/include
#X11LIB   = /usr/local/lib
#FT2INC   = /usr/local/include/freetype2

# NetBSD, OpenBSD
#X11INC   = /usr/X11R6/include
#X11LIB   = /usr/X11R6/lib
#FT2INC   = ?

# Linux
X11INC    = /usr/include
X11LIB    = /usr/lib
FT2INC    = /usr/include/freetype2

FT2LIB    = -lfontconfig -lXft

# includes and libs
INCS      = -I${X11INC} -I${FT2INC}
LIBS      = -L${X11LIB} -lX11 -lm -lrt -lutil ${FT2LIB} -lfreetype

# flags
CPPFLAGS  = -D_DEFAULT_SOURCE -D_XOPEN_SOURCE -DVERSION=\"${VERSION}\"
CFLAGS    = -pedantic -Wall -Wextra -Wformat ${CPPFLAGS} ${INCS}
LDFLAGS   = ${LIBS}
