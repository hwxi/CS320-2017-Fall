######
#
# A simple Makefile
#
######

PATSCC=$(PATSHOME)/bin/patscc
MYATSCC=$(PATSHOME)/bin/myatscc
ATSCC2JS=$(PATSHOME)/bin/atscc2js

######

all::

######
#
all:: \
Sierpinski_carpet_dats.js
#
Sierpinski_carpet_dats.c: Sierpinski_carpet.dats; $(PATSCC) -ccats $<
Sierpinski_carpet_dats.js: Sierpinski_carpet_dats.c; $(ATSCC2JS) -o $@ -i $<
#
######
#
all:: \
theCounter2_baconjs_dats.js
#
theCounter2_baconjs_dats.c: theCounter2_baconjs.dats; $(PATSCC) -ccats $<
theCounter2_baconjs_dats.js: theCounter2_baconjs_dats.c; $(ATSCC2JS) -o $@ -i $<
#
######

clean:: ; rm -f *~
clean:: ; rm -f *_dats.c

######

cleanall:: clean
cleanall:: ; rm -f *_dats.js

######

testall:: all
testall:: regress
testall:: cleanall

###### end of [Makefile] ######
