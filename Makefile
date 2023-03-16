.POSIX:

include config.mk

SRC = st.c x.c
OBJ = $(SRC:.c=.o)

all: st st.1

.c.o:
	${CC} ${CFLAGS} ${CPPFLAGS} -c $<

config.h:
	cp config.def.h config.h

st.1:
	sed "s/@VERSION@/${VERSION}/g" st.1.in > $@

st.o: config.h st.h win.h normalMode.h normalMode.c utils.h

x.o: arg.h config.h st.h win.h

${OBJ}: config.h config.mk

st: ${OBJ}
	${LD} ${OBJ} ${LDFLAGS} -o $@

terminfo_entry:
	tic -sx st.info
	@echo See the README file regarding the terminfo entry of st.

install: all
	mkdir -p   ${DESTDIR}${PREFIX}/bin
	mkdir -p   ${DESTDIR}${MANPREFIX}/man1
	cp -f st   ${DESTDIR}${PREFIX}/bin/
	cp -f st.1 ${DESTDIR}${MANPREFIX}/man1/st.1
	chmod 0755 ${DESTDIR}${PREFIX}/bin/st
	chmod 0644 ${DESTDIR}${MANPREFIX}/man1/st.1
	
uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/st
	rm -f ${DESTDIR}${MANPREFIX}/man1/st.1

clean:
	rm -f st st.1 ${OBJ}

.PHONY: all install uninstall clean
