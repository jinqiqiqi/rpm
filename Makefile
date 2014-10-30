all:
	gcc hello.c -o hello
clean:
	rm -f hello hello.o

install:all
	mkdir -p ${DESTDIR}/home/kinch/Public/test/rpm/bin
	cp hello ${DESTDIR}/home/kinch/Public/test/rpm/bin/hello

uninstall:
	rm -r ${DESTDIR}/home/kinch/Public/test/rpm/bin/hello
