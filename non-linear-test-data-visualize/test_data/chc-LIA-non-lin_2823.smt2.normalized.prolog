m$unknown:2(P2, P4) :- m$unknown:2_0_1(P0, aux_1), m$unknown:2_0_2(P2__, P0), aux_1 - P4 = 11 & P2__ = P2 & 100 >= P4.
m$unknown:2_0_1(P0, aux_1) :- m$unknown:2(P0__, aux_1__), aux_1__ = aux_1 & P0__ = P0.
m$unknown:2_0_2(P2, P0) :- m$unknown:2(P2__, P0__), P2__ = P2 & P0__ = P0.
m$unknown:2(P0, P1) :- P1 - P0 = 10 & P0 >= 91.
false :- m$unknown:2(P2, P0), P2 != 91 & 95 >= P0.
