main_1_1(P2, P10) :- P2 = 0 & P10 = 0.
main_1_1(P6, P12) :- main_1_1_1_1(aux_1, aux_2), aux_2 - P12 = -1 & aux_1 - P6 = -1 & 50 >= P6 & P12 >= 0.
main_1_1_1_1(aux_1, aux_2) :- main_1_1(aux_1__, aux_2__), aux_2__ = aux_2 & aux_1__ = aux_1.
main_1_1(P6, P12) :- main_1_1_2_1(aux_1, aux_2), aux_2 - P12 = 1 & aux_1 - P6 = -1 & P6 >= 51 & P12 >= 0.
main_1_1_2_1(aux_1, aux_2) :- main_1_1(aux_1__, aux_2__), aux_2__ = aux_2 & aux_1__ = aux_1.
main_1_2 :- main_1_1(P11, P10), 49 >= P11 & -2 >= P10.
main_1_2 :- main_1_1(P11, P10), P11 != 100 & P11 >= 50 & 0 >= P10.
false :- main_1_2.
