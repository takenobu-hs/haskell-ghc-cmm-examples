

OUTDIR := generated-asm

TARGETS := $(addprefix $(OUTDIR)/,$(subst .cmm,.asm,$(wildcard *.cmm)))

echo:
	echo $(TARGETS)

all: $(TARGETS)


%.asm : ../%.cmm
	ghc $(GHCFLAGS) $(GHCINC) -c -ddump-asm    $^ >  $*.asm


$(OUTDIR)/%.asm : %.cmm
	ghc $(GHCFLAGS) $(GHCINC) -c -ddump-asm    $^ >  $(OUTDIR)/$*.asm
	rm -f $*.hi $*.o


#------------------------------------------------------------------------
#  flag
#------------------------------------------------------------------------
GHCFLAGS=-O -fforce-recomp
#GHCTHREADED=-rtsopts -threaded

GHCINC=-I$(shell ghc --print-libdir)/includes


default:
	@ echo "need target"


#------------------------------------------------------------------------
#  dump intermidiate
#------------------------------------------------------------------------
.PRECIOUS: %.parsed %.rn %.ds %.simple %.prep %.stg %.cmm %.opt.cmm %.asm
%.dumps : %.parsed %.rn %.ds %.simple %.prep %.stg %.cmm %.opt.cmm %.disas
	@ echo "generated"


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

