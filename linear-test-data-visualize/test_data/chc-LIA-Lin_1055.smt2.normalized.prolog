main_1_1(P9, P8, P16, P17) :- P9 = P16 & P8 = P17 & P16 != 0.
main_1_1(P12, P11, P13, P14) :- main_1_1_1_1(P12__, P11__, aux_1, aux_2), aux_2 - P14 = 1 & aux_1 - P13 = 1 & P12__ = P12 & P11__ = P11 & P13 != 0.
main_1_1_1_1(P12, P11, aux_1, aux_2) :- main_1_1(P12__, P11__, aux_1__, aux_2__), aux_2__ = aux_2 & aux_1__ = aux_1 & P12__ = P12 & P11__ = P11.
false :- main_1_1(P4, P4, aux_1, P1), aux_1 = 1 & P1 != 1.
