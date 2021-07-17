LANG1=fao
LANG2=isl
PREFIX1=$(LANG1)-$(LANG2)
PREFIX2=$(LANG2)-$(LANG1)

BASENAME=apertium-$(PREFIX1)

TARGETS_COMMON = \
     $(PREFIX2).automorf.bin $(PREFIX2).autobil.bin $(PREFIX2).autogen.bin \
     $(PREFIX2).rlx.bin \
     $(PREFIX2).t1x.bin 

@ap_include@

#$(PREFIX2).t2x.bin $(PREFIX2).t3x.bin  modes
# $(PREFIX2).autopgen.bin 

##
# Faroese -> Icelandic 
##
#
#$(PREFIX1).automorf.bin: $(BASENAME).$(LANG1).dix
##	apertium-validate-dictionary $(BASENAME).$(LANG1).dix
#	lt-comp lr $(BASENAME).$(LANG1).dix $@ 
#
#$(PREFIX1).autobil.bin: $(BASENAME).$(PREFIX1).dix
#	apertium-validate-dictionary $(BASENAME).$(PREFIX1).dix
#	lt-comp lr $(BASENAME).$(PREFIX1).dix $@
#
#$(PREFIX1).autogen.bin: $(BASENAME).$(LANG2).dix
#	apertium-validate-dictionary $(BASENAME).$(LANG2).dix
#	lt-comp rl $(BASENAME).$(LANG2).dix $@
#
#$(PREFIX1).autopgen.bin: $(BASENAME).post-$(LANG2).dix
#	apertium-validate-dictionary $(BASENAME).post-$(LANG2).dix
#	lt-comp lr $(BASENAME).post-$(LANG2).dix $@
#
#$(PREFIX1).rlx.bin: $(BASENAME).$(PREFIX1).rlx
#	cg-comp $(BASENAME).$(PREFIX1).rlx $@
#
#$(PREFIX1).t1x.bin: $(BASENAME).$(PREFIX1).t1x
#	apertium-validate-transfer $(BASENAME).$(PREFIX1).t1x
#	apertium-preprocess-transfer $(BASENAME).$(PREFIX1).t1x $@
#
#$(PREFIX1).t2x.bin: $(BASENAME).$(PREFIX1).t2x
#	apertium-validate-interchunk $(BASENAME).$(PREFIX1).t2x
#	apertium-preprocess-transfer $(BASENAME).$(PREFIX1).t2x $@
#
#$(PREFIX1).t3x.bin: $(BASENAME).$(PREFIX1).t3x
#	apertium-validate-postchunk $(BASENAME).$(PREFIX1).t3x
#	apertium-preprocess-transfer $(BASENAME).$(PREFIX1).t3x $@
#


##
# Icelandic -> Faroese 
##


$(PREFIX2).automorf.bin: $(BASENAME).$(LANG2).dix
	apertium-validate-dictionary $(BASENAME).$(LANG2).dix
	lt-comp lr $(BASENAME).$(LANG2).dix $@

$(PREFIX2).autobil.bin: $(BASENAME).$(PREFIX1).dix
	apertium-validate-dictionary $(BASENAME).$(PREFIX1).dix
	lt-comp rl $(BASENAME).$(PREFIX1).dix $@

$(PREFIX2).autogen.bin: $(BASENAME).$(LANG1).dix
	apertium-validate-dictionary $(BASENAME).$(LANG1).dix
	lt-comp rl $(BASENAME).$(LANG1).dix $@

#$(PREFIX2).autopgen.bin: $(BASENAME).post-$(LANG1).dix
#	apertium-validate-dictionary $(BASENAME).post-$(LANG1).dix
#	lt-comp lr $(BASENAME).post-$(LANG1).dix $@

$(PREFIX2).rlx.bin: $(BASENAME).$(PREFIX2).rlx
	cg-comp $(BASENAME).$(PREFIX2).rlx $@

$(PREFIX2).t1x.bin: $(BASENAME).$(PREFIX2).t1x
	apertium-validate-transfer $(BASENAME).$(PREFIX2).t1x
	apertium-preprocess-transfer $(BASENAME).$(PREFIX2).t1x $@
#
#$(PREFIX2).t2x.bin: $(BASENAME).$(PREFIX2).t2x
#	apertium-validate-interchunk $(BASENAME).$(PREFIX2).t2x
#	apertium-preprocess-transfer $(BASENAME).$(PREFIX2).t2x $@
#
#$(PREFIX2).t3x.bin: $(BASENAME).$(PREFIX2).t3x
#	apertium-validate-postchunk $(BASENAME).$(PREFIX2).t3x
#	apertium-preprocess-transfer $(BASENAME).$(PREFIX2).t3x $@
#

EXTRA_DIST=$(BASENAME).$(LANG1).dix $(BASENAME).$(PREFIX1).dix \
           $(BASENAME).post-$(LANG1).dix $(BASENAME).post-$(LANG2).dix \
	   $(BASENAME).$(LANG2).dix \
	   $(BASENAME).$(LANG1).dix \
	   $(BASENAME).$(LANG2).dix \
	   $(BASENAME).$(PREFIX1).dix \
	   $(BASENAME).$(PREFIX1).rlx \
	   $(BASENAME).symbols.xml \
           $(PREFIX1).prob  \
           $(BASENAME).$(PREFIX1).t1x $(BASENAME).$(PREFIX1).t2x \
           $(BASENAME).$(PREFIX1).t3x \
           modes.xml 

#           $(LANG1)-tagger-data/README $(LANG2)-tagger-data/README 
#           $(BASENAME).$(LANG1).tsx 
#           $(BASENAME).$(LANG2).tsx  

apertium_fao_isldir=$(prefix)/share/apertium/apertium-$(PREFIX1)/

apertium_fao_isl_DATA=$(TARGETS_COMMON) \
                    $(PREFIX2).prob  \
					$(BASENAME).$(PREFIX2).t1x

#$(PREFIX1).t2x.bin $(PREFIX1).t3x.bin 
#$(PREFIX2).autopgen.bin
#$(PREFIX1).mode

install-data-local: install-modes

CLEANFILES = -rf $(TARGETS_COMMON) modes

test: all
	apertium-regtest test
