main_1_1(P10, P9) :- P9 = 0 & P10 = 0.
main_1_1(P12, P11) :- main_1_1_1_1(aux_1, aux_2), aux_2 = -1 & aux_1 = -2 & P12 = 0 & P11 = 0.
main_1_1_1_1(aux_1, aux_2) :- main_1_1(aux_1__, aux_2__), aux_2__ = aux_2 & aux_1__ = aux_1.
main_1_1(P12, P11) :- main_1_1_2_1(aux_1, aux_2), aux_2 - P11 = -1 & aux_1 = -2 & P12 = 0 & P11 != 0.
main_1_1_2_1(aux_1, aux_2) :- main_1_1(aux_1__, aux_2__), aux_2__ = aux_2 & aux_1__ = aux_1.
main_1_1(P12, P11) :- main_1_1_3_1(aux_1, aux_2), aux_2 - P11 = -1 & aux_1 - 2*P11 = -2 & P12 = 2*P11 & P11 != 0.
main_1_1_3_1(aux_1, aux_2) :- main_1_1(aux_1__, aux_2__), aux_2__ = aux_2 & aux_1__ = aux_1.
false :- main_1_1(P2, P1), P2 != 2*P1 & P2 != -2.
