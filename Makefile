.PHONY: clean dist all

all: eng.html spa.html

%.html: locali index.html.loc
	loca -o $@ -l $* index.html.loc

clean:
	rm *.html

dist: all res
	mkdir progreso-new
	cp -r *.html res progreso-new/
	zip -f progreso-new.zip progreso-new
	rm -rf progreso-new/
