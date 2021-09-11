######
#
# A Simple Makefile
#
######

PATSCC=\
$(PATSHOME)/bin/patscc
PATSOPT=\
$(PATSHOME)/bin/patsopt
ATSCC2JS=\
$(PATSHOME)/bin/atscc2js

######

all::

######

all:: \
assign03_sol
assign03_sol: \
assign03_sol.dats; \
$(PATSCC) -DATS_MEMALLOC_LIBC -o $@ $<

######

regress:: \
assign03_sol; ./$<

######

testall:: all
testall:: regress
testall:: cleanall

######

clean:: ; rm -f *~
clean:: ; rm -f *_?ats.c

######

cleanall:: clean
cleanall:: ; rm -f assign03_sol

###### end of [Makefile] ######
