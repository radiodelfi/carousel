00 rem simulatore  
10 y=0:print chr$(147);
20 x=y
30 print chr$(13)"digita il numero di"
35 print "diapositiva"
40 input "(0-80)";y
50 if y<0 or y>80 then goto 30
70 s1=y-x
75 if s1=0 goto 150
80 s2=(81-abs(s1))*(-sgn(s1))
90 if abs(s1)>abs(s2)then n=s2:goto 110
100 n=s1
110 gosub 1000
120 goto 20
150 print chr$(13)"rimango fermo"
160 goto 20
1000 if sgn(n)>=0 then goto 1100
1010 print chr$(13)"indietro di";abs(n)
1020 return
1100 print chr$(13)"avanti di";abs(n)
1110 return