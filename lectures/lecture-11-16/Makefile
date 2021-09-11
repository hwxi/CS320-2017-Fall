######
#
# A Simple Makefile
#
######
#
MYATSCC=\
${PATSHOME}/bin/myatscc
#
MYATSCCgc=$(MYATSCC) --gc
#
######

all:: \
fibo_memo_dats
all:: \
list0_submaxord_memo_dats

######

%_dats: %.dats; $(MYATSCCgc) $<

######

clean:: ; rm -f *~

cleanall:: clean
cleanall:: ; rm -f fibo_memo_dats
cleanall:: ; rm -f list0_submaxord_memo_dats

###### end of [Makefile] ######
