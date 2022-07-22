addition@.split(P6, P5, P4) :- P6 = P5 & P4 = 0.
addition@.split(P6, P5, P4) :- addition@.split_1_1(P6__, aux_1, aux_2), aux_2 - P4 = -1 & aux_1 - P5 = 1 & P6__ = P6 & P4 >= 1.
addition@.split_1_1(P6, aux_1, aux_2) :- addition@.split(P6__, aux_1__, aux_2__), aux_2__ = aux_2 & aux_1__ = aux_1 & P6__ = P6.
addition@.split(P6, P5, P4) :- addition@.split_2_1(P6__, aux_1, aux_2), aux_2 - P4 = 1 & aux_1 - P5 = -1 & P6__ = P6 & -1 >= P4.
addition@.split_2_1(P6, aux_1, aux_2) :- addition@.split(P6__, aux_1__, aux_2__), aux_2__ = aux_2 & aux_1__ = aux_1 & P6__ = P6.
false :- addition@.split(P8, P10, P9), P9 + P10 - P8 != 0 & 1073741823 >= P9 & P9 >= 0 & 1073741823 >= P10 & P10 >= 0.
