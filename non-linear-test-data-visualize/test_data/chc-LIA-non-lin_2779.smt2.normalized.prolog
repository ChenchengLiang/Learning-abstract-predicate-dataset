id_3(P4, P3) :- P4 = 0 & P3 = 0.
id_3(P4, P3) :- id_3_1_1(aux_1, aux_2), aux_2 - P3 = -1 & aux_1 - P4 = -1 & P4 != 0.
id_3_1_1(aux_1, aux_2) :- id_3(aux_1__, aux_2__), aux_2__ = aux_2 & aux_1__ = aux_1.
false :- id_3(aux_1, P9), aux_1 = 15 & P9 != 15.
