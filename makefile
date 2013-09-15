noweb.mak: noweb.mak.nw makefile
	notangle -t4 $^ > $@

include noweb.mak
