f_sf(P4, P3) :- f_s1(P4), 100 < P4 & P3 = P4 - 10 & P2 = P4.
f_s3(P8, P7) :- f_s1(P8), f_sf(P8 + 12, P7), 100 >= P8 & P6 = P8.
f_s1(P6) :- f_s1(P4 - 12), 100 >= P4 - 12 & P7 = P5 & P6 = P4.
f_sf(P8, P7) :- f_s3(P8, P5), f_sf(P5, P7), P6 = P8.
f_s1(P6) :- f_s3(P2, P4), P7 = P5 & P6 = P4.
f_s1(P8) :- P6 = 2*P0 & 100 >= P6 & P9 = P7 & P8 = P6.
false :- f_sf(P0, P1), P1 != 92 & P0 = 2*P0 & 100 >= P0.
