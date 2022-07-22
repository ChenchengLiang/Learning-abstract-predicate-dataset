hanoi_3(P4, P3) :- P4 = 1 & P3 = 1.
hanoi_3(P4, P3) :- hanoi_3_1_1(aux_1, P14), aux_1 - P4 = -1 & P3 - 2*P14 = 1 & P4 != 1.
hanoi_3_1_1(aux_1, P14) :- hanoi_3(aux_1__, P14__), aux_1__ = aux_1 & P14__ = P14.
false :- hanoi_3(P8, P7), 31 >= P8 & P8 >= 1 & -1 >= P7.
