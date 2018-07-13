.PHONY: clean dist all

all: eng.html spa.html

%.html: locali index.html.loc
	loca -o $@ -l $* index.html.loc

clean:
	rm *.html progreso-login.zip

dist: all res
	mkdir progreso-login
	cp -r *.html res progreso-login/
	zip -f progreso-login.zip progreso-login
	rm -rf progreso-login/
