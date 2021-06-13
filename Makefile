
# Makefile for GHC's Cmm


#------------------------------------------------------------------------
#  flags
#------------------------------------------------------------------------
GHCFLAGS := -O -fforce-recomp -v0
GHCINC   := -I$(shell ghc --print-libdir)/includes

OUTDIR  := generated-asm
TARGETS := $(addprefix $(OUTDIR)/,$(subst .cmm,.asm,$(wildcard *.cmm)))



#------------------------------------------------------------------------
#  targets
#------------------------------------------------------------------------
default:
	@ echo "need target"


all: $(TARGETS)

$(OUTDIR)/%.asm : %.cmm
	ghc $(GHCFLAGS) $(GHCINC) -c -ddump-asm    $^ >  $(OUTDIR)/$*.asm
	rm -f $*.hi $*.o

%.asm : %.cmm
	ghc $(GHCFLAGS) $(GHCINC) -c -ddump-asm    $^ >  $*.asm



#------------------------------------------------------------------------
#  clean
#------------------------------------------------------------------------
CLEAN    := $(wildcard *.hi) $(wildcard *.o)
CLEANALL := $(CLEAN)
CLEANALL += $(wildcard *.asm)

clean:
	rm -f $(CLEAN)

cleanall:
	rm -f $(CLEANALL)

