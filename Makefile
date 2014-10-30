all:hello
	gcc -c hello.c hi.c
hello:hello.o hi.c
	gcc -o hello hello.o hi.c
clean:
	rm -f hello hello.o hi.o

install:all
	mkdir -p ${DESTDIR}/opt/bin
	cp hello ${DESTDIR}/opt/bin/hello

uninstall:
	rm -r ${DESTDIR}/opt/bin/hello
