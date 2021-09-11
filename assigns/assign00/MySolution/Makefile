######
#
# A Simple Makefile
#
######

PATSCC=\
$(PATSHOME)/bin/patscc

######

all::

######

all:: \
assign00_sol
assign00_sol: \
assign00_sol.dats; $(PATSCC) -o $@ $<

######

regress:: \
assign00_sol; ./$<

######

testall:: all
testall:: regress
testall:: cleanall

######

clean:: ; rm -f *~
clean:: ; rm -f *_?ats.c

######

cleanall:: clean
cleanall:: ; rm -f assign00_sol

###### end of [Makefile] ######
