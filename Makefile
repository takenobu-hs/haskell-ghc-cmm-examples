

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

