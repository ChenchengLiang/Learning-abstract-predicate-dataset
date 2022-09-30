is_even_q3(P4, P3) :- is_even_q0(0), P3 = 1 & 0 = P2 & 0 = P4.
is_odd_q3(P4, P3) :- is_even_q0(1), P3 = 0 & 0 = P2 & P4 = 0.
is_odd_q3(P8, P7) :- is_even_q0(P6 + 1), is_even_q3(P6 - 1, P7), 0 < P6 & 0 < P6 + 1 & P8 = P6.
is_even_q0(P6) :- is_even_q0(P4 + 2), 0 < P4 + 1 & 0 < P4 + 1 + 1 & P7 = P5 & P6 = P4.
is_even_q3(P8, P7) :- is_even_q0(P8), is_odd_q3(P8 - 1, P7), 0 < P8 & P6 = P8.
is_even_q0(P6) :- P4 = 2*P0 & P4 >= 0 & P6 = P4 & P7 = P5.
false :- is_even_q3(P0, 0), P0 = 2*P0 & P0 >= 0.
