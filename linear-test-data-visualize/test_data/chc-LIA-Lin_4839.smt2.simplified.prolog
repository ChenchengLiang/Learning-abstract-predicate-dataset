main_s1(P4) :- main_s3(P4), P3 = 0 & P2 = P4.
main_s4(P4, P3) :- main_s3(P4), P2 = P4 & P3 = 0.
main_s3(P4) :- main_s1(P4), P3 = 0 & P2 = P4.
main_s2(P4, P3) :- main_s1(P4), P2 = P4 & P3 = 0.
main_s3(P4) :- main_s4(P4, P1), P3 = 0 & P2 = P4.
main_s2(P4, P3) :- main_s4(P4, P3), P2 = P4.
main_s1(P4) :- main_s2(P4, P1), P3 = 0 & P2 = P4.
main_s4(P4, P3) :- main_s2(P4, P4 - 1), P3 = 0 & P2 = P4.
main_s4(P4, P3) :- main_s2(P4, P3 - 1), P3 - 1 != P4 - 1 & P2 = P4.
main_s1(P4) :- 1 < P2 & P3 = 0 & P4 = P2.
CHC_COMP_FALSE :- main_s4(P4, P4).
CHC_COMP_FALSE :- main_s2(P4, P4).
false :- CHC_COMP_FALSE.
