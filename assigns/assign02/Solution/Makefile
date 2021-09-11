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
assign02_sol
assign02_sol: \
assign02_sol.dats; $(PATSCC) -o $@ $<

######

regress:: \
assign02_sol; ./$<

######

testall:: all
testall:: regress
testall:: cleanall

######

clean:: ; rm -f *~
clean:: ; rm -f *_?ats.c

######

cleanall:: clean
cleanall:: ; rm -f assign02_sol

###### end of [Makefile] ######
