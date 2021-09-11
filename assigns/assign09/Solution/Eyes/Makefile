######
#
# A simple Makefile
#
######
#
PATSCC=$(PATSHOME)/bin/patscc
PATSOPT=$(PATSHOME)/bin/patsopt
MYATSCC=$(PATSHOME)/bin/myatscc
ATSCC2JS=$(PATSHOME)/bin/atscc2js
#
######
#
JAVA=java
CLOSURE_COMPILER=\
/usr/share/java/closure-compiler.jar
#
######

all::

######

all:: \
Eyes_dats_compiled.js

######

%_dats.c: %.dats; $(PATSOPT) -o $@ -d $<
%_dats.js: %_dats.c; $(ATSCC2JS) -o $@ -i $<
%_dats_compiled.js: %_dats.js; \
$(JAVA) -jar $(CLOSURE_COMPILER) --js_output_file=$@ $<

######

clean:: ; rm -f *~
clean:: ; rm -f *_dats.c

######

cleanall:: clean
cleanall:: ; rm -f *_dats.js
cleanall:: ; rm -f *_dats_compiled.js

######

testall:: all
testall:: regress
testall:: cleanall

###### end of [Makefile] ######
