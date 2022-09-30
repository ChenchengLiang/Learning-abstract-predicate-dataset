is_even_q3(x1, x2) :- is_even_q0(0), x2 = 1 & 0 = x1.
is_odd_q3(x1, x2) :- is_even_q0(1), x2 = 0 & x1 = 0.
is_odd_q3(x1, x2) :- is_even_q0(P6 + 1), is_even_q3(P6 - 1, x2), 0 < P6 & 0 < P6 + 1 & x1 = P6.
is_even_q0(x1) :- is_even_q0(P4 + 2), 0 < P4 + 1 & 0 < P4 + 2 & x1 = P4.
is_even_q3(x1, x2) :- is_even_q0(x1), is_odd_q3(x1 - 1, x2), 0 < x1 & P6 = x1.
is_even_q0(x1) :- P4 = 2*P0 & P4 >= 0 & x1 = P4.
false :- is_even_q3(x1, x2), x1 = 2*x1 & x1 >= x2.





----ManuallySimplified-----
is_even_q3(0, 1) :- is_even_q0(0).
is_odd_q3(0, 0) :- is_even_q0(1).
is_odd_q3(x1, x2) :- is_even_q0(P6 + 1), is_even_q3(P6 - 1, x2), P6 >=0 & x1 = P6.
is_even_q0(x1) :- is_even_q0(P4 + 2), P4 >= 0 & x1 = P4.
is_even_q3(x1, x2) :- is_even_q0(x1), is_odd_q3(x1 - 1, x2), 0 < x1 & P6 = x1.
is_even_q0(x1) :- P4 = 2*P0 & P4 >= 0 & x1 = P4.
false :- is_even_q3(x1, x2), x1 = 2*x1 & x1 >= x2.



----ManuallyTransformedAssertion-----
false :- is_even_q3(x1, x2), x1 = 2*x1 & x1 >= x2.
true :- is_even_q3(x1, x2), neg(x1 = 2*x1 & x1 >= x2).
true :- is_even_q3(x1, x2), (x1 != 2*x1 | x1 < x2).
