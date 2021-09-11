######
#
# A simple Makefile
#
######

all:: fact_dats
fact_dats: fact.dats; myatscc fact.dats

all:: fact_test_dats
fact_test_dats: fact_test.dats; myatscc fact_test.dats

######

clean:: ; rm -f *~

######

cleanall:: clean
cleanall:: ; rm -f fact_dats

###### end of [Makefile] ######
