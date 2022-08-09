

;yabb50.prg ==0801==
   10 print"{clr}";
   11 gosub110
   12 gosub1005
   20 gosub410
   21 gosub510
   22 end
  100 rem *** init
  110 sc=100
  111 readtc
  112 l=65537
  120 dimct(tc),s(12)
  121 fori=0to12
  130 s(i)=i
  131 nexti
  132 x=1
  140 deffnm(x)=2+x-int(x/10)*10
  150 q$="abcdefghijklmnopqrstuvwxyz1234567890"
  160 l1$="{home}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}"
  170 return
  200 rem *** reset timer
  210 time$="000000"
  211 tm=0
  212 return
  300 rem *** get time
  310 tm=time/50
  311 return
  400 rem *** run tests
  410 fort=1totc
  411 readtn$,tr
  420 print"{clr}";left$(tn$+":           ",12)
  430 ont gosub1110,1210,1310,1410,1510,1610,1710,1810
  440 tm=tm-c*cc/ca-c/cb
  450 c(t)=c*cc/tm
  451 nextt
  452 return
  500 rem *** results
  510 print"{clr}results"
  511 restore
  520 readtc
  521 ra=1
  522 fort=1totc
  530 readtn$,tr
  531 rt=c(t)/tr
  540 printleft$(tn$+":       ",8);
  550 ra=ra*rt
  560 ct$=right$("    "+str$(int(c(t)*100+0.5)/100+0.001),9)
  570 rt$=right$("    "+str$(int(100*rt+0.5)),5)+"%"
  580 printleft$(ct$,8);" ";rt$
  590 nextt
  591 ra=ra^(1/tc)
  600 print"summary:         ";
  610 printright$("    "+str$(int(100*ra+0.5)),5);"%"
  620 return
 1000 rem *** calibrate
 1005 print"{clr}calibrate 1:"
 1006 c=0
 1010 h=l+1023
 1011 gosub210
 1015 c=c+1
 1016 printl1$;tm
 1020 fori=l toh
 1025 nexti
 1026 gosub310
 1030 iftm<sc then1015
 1035 c1=tm/c
 1040 print"{clr}calibrate 2:"
 1041 c=0
 1045 h=l+511
 1046 gosub210
 1050 c=c+1
 1051 printl1$;tm
 1055 fori=l toh
 1060 nexti
 1061 gosub310
 1065 iftm<sc then1050
 1070 c2=tm/c
 1071 ca=512/(c1-c2)
 1075 cb=1/(2*c2-c1)
 1080 cc=int(ca/2+0.5)
 1081 h=l+cc-1
 1085 return
 1100 rem *** for
 1110 c=0
 1111 gosub210
 1120 c=c+1
 1121 printl1$;tm
 1130 fori=l toh
 1140 forj=1to10
 1141 nextj
 1150 nexti
 1151 gosub310
 1160 iftm<sc then1120
 1170 return
 1200 rem *** control
 1210 c=0
 1211 gosub210
 1220 c=c+1
 1221 printl1$;tm
 1230 fori=l toh
 1240 ifi>0thengosub160
 1250 nexti
 1251 gosub310
 1260 iftm<sc then1220
 1270 return
 1300 rem *** fn
 1310 c=0
 1311 gosub210
 1320 c=c+1
 1321 printl1$;tm
 1330 fori=l toh
 1340 x=fnm(i)
 1350 nexti
 1351 gosub310
 1360 iftm<sc then1320
 1370 return
 1400 rem *** math 1
 1410 c=0
 1411 gosub210
 1420 c=c+1
 1421 printl1$;tm
 1430 fori=l toh
 1440 x=i
 1441 x=(x+x)*x/x-x
 1450 nexti
 1451 gosub310
 1460 iftm<sc then1420
 1470 return
 1500 rem *** math 2
 1510 c=0
 1511 gosub210
 1520 c=c+1
 1521 printl1$;tm
 1530 fori=l toh
 1540 x=i
 1541 x=atn(sqr(abs(tan(x))))
 1550 nexti
 1551 gosub310
 1560 iftm<sc then1520
 1570 return
 1600 rem *** string
 1610 c=0
 1611 gosub210
 1620 c=c+1
 1621 printl1$;tm
 1630 fori=l toh
 1640 q$=right$(q$,35)+left$(q$,1)
 1650 nexti
 1651 gosub310
 1660 iftm<sc then1620
 1670 return
 1700 rem *** array
 1710 c=0
 1711 gosub210
 1720 c=c+1
 1721 printl1$;tm
 1730 fori=l toh
 1740 x=fnm(i)
 1741 s(x)=(s(x-1)+s(x)+s(x+1))/3
 1750 nexti
 1751 gosub310
 1760 iftm<sc then1720
 1770 return
 1800 rem *** array
 1810 c=0
 1811 gosub210
 1820 c=c+1
 1821 printl1$;tm
 1830 fori=l toh
 1840 print"{home}{down}";i;
 1850 nexti
 1851 gosub310
 1860 iftm<sc then1820
 1870 return
 9900 data8
 9910 data"for",41.3,"control",196
 9920 data"fn",54.4,"math 1",74.9
 9930 data"math 2",6.04,"string",72.9
 9940 data"array",26.5,"print",73.2

