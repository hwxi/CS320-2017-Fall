######
#
# A simple Makefile
#
######

PATSCC=$(PATSHOME)/bin/patscc
MYATSCC=$(PATSHOME)/bin/myatscc

######
#
all::
regress::
cleanall::
#
testall:: all
testall:: regress
testall:: cleanall
#
######

all:: \
multable
multable: ; \
$(MYATSCC) multable.dats

######

clean:: ; rm -f *~

######

cleanall:: clean
cleanall:: ; rm -f *_dats
cleanall:: ; rm -f *_dats.php
cleanall:: ; rm -f multable.html

###### end of [Makefile] ######
