gib$unknown:4(P4, P8, P1, P0) :- gib$unknown:4(P2, P8 - 2, P1, P0), gib$unknown:4(P3, P8 - 1, P1, P0), P8 != 0 & P4 = P3 + P2 & P8 != 1.
gib$unknown:4(P2, P3, P0, P1) :- P4 != 0 & P1 = P2 & P3 = 0.
gib$unknown:4(P2, P4, P1, P0) :- P5 != 0 & P1 = P2 & P4 = 1.
false :- gib$unknown:4(P6, P0, P2, P1), P3 != 0 & P5 != 0 & P4 != 0 & P2 >= 0 & -1 >= P6 & P1 >= 0.
