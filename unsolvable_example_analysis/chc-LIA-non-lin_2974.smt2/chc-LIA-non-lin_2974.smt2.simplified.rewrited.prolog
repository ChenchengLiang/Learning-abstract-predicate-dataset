gib$unknown:4(x1, x2, x3, x4) :- gib$unknown:4(P2, x2 - 2, x3, x4), gib$unknown:4(P3, x2 - 1, x3, x4), x2 != 0 & x1 = P3 + P2 & x2 != 1.
gib$unknown:4(x1, x2, x3, x4) :- P4 != 0 & x4 = x1 & x2 = 0.
gib$unknown:4(x1, x2, x3, x4) :- P5 != 0 & x3 = x1 & x2 = 1.
false :- gib$unknown:4(x1, x2, x3, x4), P3 != 0 & P5 != 0 & P4 != 0 & x3 >= 0 & -1 >= x1 & x4 >= 0.





----ManuallySimplified-----
gib$unknown:4(x1, x2, x3, x4) :- gib$unknown:4(P2, x2 - 2, x3, x4), gib$unknown:4(P3, x2 - 1, x3, x4), x2 != 0 & x1 = P3 + P2 & x2 != 1.
gib$unknown:4(x1, x2, x3, x4) :- x4 = x1 & x2 = 0.
gib$unknown:4(x1, x2, x3, x4) :- x3 = x1 & x2 = 1.
false :- gib$unknown:4(x1, x2, x3, x4), x3 >= 0 & -1 >= x1 & x4 >= 0.

----ManuallyTransformedAssertion-----
true :- gib$unknown:4(x1, x2, x3, x4), neg(-1 >= x1 & x3 >= 0 & x4 >= 0).
true :- gib$unknown:4(x1, x2, x3, x4),     (-1 < x1  | x3 < 0  | x4 < 0).



----InitialPredicates-----
(x3>=0 & x4>=0) => (x3 <= x1 | x4 <= x1)
neg(x3 >= 0 & x4 >= 0) | (x3 <= x1 | x4 <= x1)
(x3 < 0 | x4 < 0) | (x3 <= x1 | x4 <= x1)
x3 + 1 <= 0 | x4 + 1 <= 0 | x3 - x1 <= 0 | x4 -x1 <= 0
