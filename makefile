#include noweb.mak
noweb.mak: noweb.mak.nw
	notangle -t $^ > $@

