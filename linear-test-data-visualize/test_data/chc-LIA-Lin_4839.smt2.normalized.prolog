main_s1(P4) :- main_s3(P4__), P4__ = P4.
main_s4(P4, P3) :- main_s3(P4__), P4__ = P4 & P3 = 0.
main_s3(P4) :- main_s1(P4__), P4__ = P4.
main_s2(P4, P3) :- main_s1(P4__), P4__ = P4 & P3 = 0.
main_s3(P4) :- main_s4(P4__, P1), P4__ = P4.
main_s2(P4, P3) :- main_s4(P4__, P3__), P4__ = P4 & P3__ = P3.
main_s1(P4) :- main_s2(P4__, P1), P4__ = P4.
main_s4(P4, P3) :- main_s2(P4__, aux_1), aux_1 - P4 = -1 & P4__ = P4 & P3 = 0.
main_s4(P4, P3) :- main_s2(P4__, aux_1), aux_1 - P3 = -1 & P4__ = P4 & P4 != P3.
main_s1(P4) :- P4 >= 2.
CHC_COMP_FALSE :- main_s4(P4, P4).
CHC_COMP_FALSE :- main_s2(P4, P4).
false :- CHC_COMP_FALSE.
