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
assign02-2_sol
assign02-2_sol: \
assign02-2_sol.dats; \
$(PATSCC) -DATS_MEMALLOC_LIBC -o $@ $< -latslib -lm

######

regress:: \
assign02-2_sol; ./$<

######

testall:: all
testall:: regress
testall:: cleanall

######

clean:: ; rm -f *~
clean:: ; rm -f *_?ats.c

######

cleanall:: clean
cleanall:: ; rm -f assign02-2_sol

###### end of [Makefile] ######
