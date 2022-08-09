all: YABB.DSK

YABB.DSK: YABB50.BAS YABB60.BAS
	decb dskini $@
	decb copy -tb YABB50.BAS $@,
	decb copy -tb YABB60.BAS $@,

.PHONY: all run run50 run60 run503 run603 clean distclean

run: run50 run60 run503 run603

run50:
	xroar -machine coco YABB50.BAS

run60:
	xroar -machine cocous YABB60.BAS

run503:
	xroar -machine coco3p YABB50.BAS

run603:
	xroar -machine coco3 YABB60.BAS

clean:
	rm -f *~

distclean: clean
	rm -f YABB.DSK
