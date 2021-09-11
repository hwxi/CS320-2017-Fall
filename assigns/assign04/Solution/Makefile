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
#
all:: \
assign04_sol
assign04_sol: \
assign04_sol.dats; \
$(PATSCC) -D_GNU_SOURCE -DATS_MEMALLOC_LIBC -o $@ $< -latslib -lm
#
######

regress:: \
assign04_sol; ./$<

######

testall:: all
testall:: regress
testall:: cleanall

######

clean:: ; rm -f *~
clean:: ; rm -f *_?ats.c

######

cleanall:: clean
cleanall:: ; rm -f assign04_sol
cleanall:: ; rm -f assign04_sol_dats
cleanall:: ; rm -f assign04_sol_R_dats.R

###### end of [Makefile] ######
