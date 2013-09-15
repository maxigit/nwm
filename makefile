#include noweb.mak
noweb.mak: noweb.mak.nw makefile
	notangle -t4 $^ > $@

