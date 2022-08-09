all: yabb.d64

yabb.d64: yabb50.prg yabb60.prg
	c1541 -format yabb,00 d64 $@ -attach $@ -write yabb50.prg yabb50 -write yabb60.prg yabb60

%.prg: %.bas
	petcat -w2 $< >$@

.PHONY: all run run50 run60 clean distclean

run: run50 run60

run50: yabb50.prg
	x64 yabb50.prg

run60: yabb60.prg
	x64 -ntsc yabb60.prg

clean:
	rm -f *~

distclean: clean
	rm -f yabb50.prg yabb60.prg yabb.d64
