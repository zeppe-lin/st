.POSIX:

include config.mk

SRC = st.c x.c
OBJ = $(SRC:.c=.o)

all: st

.c.o:
	${CC} ${CFLAGS} ${CPPFLAGS} -c $<

config.h:
	cp config.def.h config.h

st.o: config.h st.h win.h normalMode.h normalMode.c utils.h

x.o: arg.h config.h st.h win.h

${OBJ}: config.h config.mk

st: ${OBJ}
	${LD} ${OBJ} ${LDFLAGS} -o $@

install: st
	mkdir -p   ${DESTDIR}${PREFIX}/bin
	mkdir -p   ${DESTDIR}${MANPREFIX}/man1
	cp -f st   ${DESTDIR}${PREFIX}/bin/
	cp -f st.1 ${DESTDIR}${MANPREFIX}/man1/
	tic -sx st.info
	@echo See the README file regarding the terminfo entry of st.

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/st
	rm -f ${DESTDIR}${MANPREFIX}/man1/st.1

clean:
	rm -f st ${OBJ}

.PHONY: all uninstall clean

# vim:cc=72:tw=70
# End of file.
