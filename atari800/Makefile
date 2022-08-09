all: yabb.atr

yabb.atr: yabb50.bas yabb60.bas
	cp dos25.atr $@
	atr $@ put -l yabb50.bas yabb50.txt
	atr $@ put -l yabb60.bas yabb60.txt

.PHONY: run run50 run60

run: run50 run60 clean distclean

run50: yabb.atr
	atari800 -basic yabb.atr

run60: yabb.atr
	atari800 -basic -ntsc yabb.atr

clean:
	rm -f *~

distclean: clean
	rm -f yabb.atr
