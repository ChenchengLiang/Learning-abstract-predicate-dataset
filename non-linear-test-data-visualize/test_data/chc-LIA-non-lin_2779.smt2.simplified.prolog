id_3(P4, P3) :- P1 != 0 & P0 != 0 & P10 != 0 & P1 != 0 & P0 != 0 & P0 != 0 & P1 != 0 & P2 != 0 & P3 = 0 & P4 = 0.
id_3(P4, P3) :- id_3(P4 - 1, P3 - 1), P1 != 0 & P0 != 0 & P7 != 0 & P4 != 0 & P11 != 0 & P1 != 0 & P0 != 0.
false :- id_3(15, P9), P2 != 0 & P1 != 0 & P9 != 15 & P8 != 0.
