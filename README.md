#Yet another BASIC benchmark

This is intended to benchmark BASIC interpreters in a typical use
case.

Each run should take roughly 10 minutes. Individual tests are mostly
microbenchmarks. The overall summary is the geometric mean of the
individual tests.

In order to get accurate data two calibration passes are made. These
also give us the values for the two tests FOR and CONTROL. FOR gives
us how fast a for loop will run while CONTROL combines if, goto, gosub
and reading a system value.

Other tests

* Results

    * Real

        * Atari 800 (NTSC):		 62%

        * Color Computer 3 (NTSC):	 91%	181%

        * Commodore 64 (NTSC):	      	109%

        * TANO Dragon:			101%	142%

        * ZX Spectrum Next (PAL):  	 78%	156%	312%	511%

    * Emulated

        * Atari 800 (PAL):		 65%

        * Color Computer 1/2 (NTSC):	100%	141%

        * Color Computer 1/2 (PAL):  	 99%	140%

        * Color Computer 3 (PAL):

        * Commodore 128 (NTSC):

        * Commodore 128 (PAL):

        * Commodore 64 (PAL):		 81%

        * Dragon:			101%	141%
        
        * Basic09 (CoCo3, NTSC, h6309):	724%

        * Sinclar ZX Spectrum:

        * ZX Spectrum Next (NTSC):

* Other systems

If you want to adapt the code for a new system you should do a
benchmark for the system as it defaults, but you can add additional
tests which have the system run at a higher speed.  The code can be
tuned in ways that would be normally used but which do not interfere
with the benchmarking process.  An examination of the existing code
should make clear what this entails. Keep in mind the general
objective. This means that you can simulate missing features using
existing features (for instance using a subroutine to replace FN if
DEF FN doesn't exist) and control cloops can be tuned or replaced.
