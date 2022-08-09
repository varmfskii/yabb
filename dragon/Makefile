all:

.PHONY: all run run50 run60 run503 run603 clean distclean

run: run50 run60

run50:
	xroar -machine dragon64 YABB50.BAS

run60:
	xroar -machine tano YABB60.BAS

clean:
	rm -f *~

distclean: clean
