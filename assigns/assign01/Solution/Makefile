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
assign01_sol
assign01_sol: \
assign01_sol.dats; $(PATSCC) -o $@ $<

######

all:: \
assign01_sol.js
assign01_sol.js: \
assign01_sol_js.dats; $(PATSOPT) -d $< | $(ATSCC2JS) -o $@ -i -

######

regress:: \
assign01_sol; ./$<

######

testall:: all
testall:: regress
testall:: cleanall

######

clean:: ; rm -f *~
clean:: ; rm -f *_?ats.c

######

cleanall:: clean
cleanall:: ; rm -f assign01_sol
cleanall:: ; rm -f assign01_sol.js

###### end of [Makefile] ######
