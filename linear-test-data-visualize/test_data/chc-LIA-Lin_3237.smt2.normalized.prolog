main_1_1(P13, P14) :- P14 = P13 & 1023 >= P13.
main_1_1(P11, P12) :- main_1_1_1_1(aux_1, aux_2), aux_2 - P12 = -1 & aux_1 - P11 = -1 & 1023 >= P11.
main_1_1_1_1(aux_1, aux_2) :- main_1_1(aux_1__, aux_2__), aux_2__ = aux_2 & aux_1__ = aux_1.
false :- main_1_1(P2, P1), P2 != P1 & P2 >= 1023.
