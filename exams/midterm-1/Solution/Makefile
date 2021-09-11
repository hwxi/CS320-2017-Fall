######

PATSCC=\
$(PATSHOME)/bin/patscc
MYATSCC=\
$(PATSHOME)/bin/myatscc

######

%_dats: %.dats; $(MYATSCC) $<

######

clean:: ; rm -f *~
cleanall:: clean
cleanall:: ; rm -f *_dats

###### end of [Makefile] ######
