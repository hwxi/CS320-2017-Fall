######

MYATSCC=\
${PATSHOME}/bin/myatscc

######

all:: \
Timer_dats.js

Timer_dats.js: \
Timer.dats; $(MYATSCC) $<

######

clean:: ; rm -f *~
clean:: ; rm -f *_dats.c

######

cleanall:: clean
cleanall:: ; rm -f *_dats.js

###### end of [Makefile] ######
