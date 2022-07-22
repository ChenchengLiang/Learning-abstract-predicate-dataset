f_sf(P4, P3) :- f_s1(P4__), P4__ - P3 = 10 & P4 - P3 = 10 & P3 >= 91.
f_s3(P8, P7) :- f_s1(P8__), f_sf(aux_1, P7__), aux_1 - P8 = 12 & P8__ = P8 & P7__ = P7 & 100 >= P8.
f_s1(P6) :- f_s1_2_1(aux_1), aux_1 - P6 = -12 & 112 >= P6.
f_s1_2_1(aux_1) :- f_s1(aux_1__), aux_1__ = aux_1.
f_sf(P8, P7) :- f_s3(P8__, P5), f_sf_3_1(P5, P7__), P8__ = P8 & P7__ = P7.
f_sf_3_1(P5, P7) :- f_sf(P5__, P7__), P7__ = P7 & P5__ = P5.
f_s1(P6) :- f_s3(P2, P6__), P6__ = P6.
f_s1(P8) :- 100 >= P8 & \exists int v0; P8 = -2*v0.
false :- f_sf(P0, P1), P1 != 92 & 100 >= P0 & \exists int v0; P0 = -2*v0.
