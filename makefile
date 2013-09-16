noweb.mak: noweb.mak.nw makefile
	notangle -t4 $< > $@

README.md: noweb.mak.nw makefile
	notangle -t $< -R$@ > $@

include noweb.mak
