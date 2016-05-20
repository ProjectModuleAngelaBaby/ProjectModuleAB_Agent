all: build pack rmbuild

build:
	go build

pack:
	tar czvf moduleab_agent.tar.gz moduleab_agent conf.ini logs --exclude=logs/*

clean: rmbuild
	rm logs/* || echo
	rm *.tar.gz || echo

rmbuild:
	rm moduleab_agent || echo
