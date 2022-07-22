; sv-comp/./LIA/Eldarica/VHDL/counter.correct.nts_000.smt2
(set-logic HORN)

(declare-fun |main_s3| ( Int Int Int Int ) Bool)
(declare-fun |main_s2| ( Int Int Int Int ) Bool)
(declare-fun |CHC_COMP_FALSE| ( ) Bool)
(declare-fun |main_init_p| ( Int Int Int Int ) Bool)
(declare-fun |main_s4| ( Int Int Int Int ) Bool)
(declare-fun |main_s1| ( Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main_s3 A B E F)
        (and (= C 0) (= D F))
      )
      (main_s1 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main_s3 A B E F)
        (and (= C E) (= D F))
      )
      (main_s4 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main_s1 A B E F)
        (and (= C 0) (= D F))
      )
      (main_s3 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main_s1 A B E F)
        (and (= C E) (= D F))
      )
      (main_s2 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main_s4 A B E F)
        (and (= C 0) (= D F))
      )
      (main_s3 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main_s4 A B E F)
        (and (= C E) (= D F))
      )
      (main_s2 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main_s2 A B E F)
        (and (= C 0) (= D F))
      )
      (main_s1 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main_s2 A B E F)
        (and (= D F) (= C 0) (= E (+ (- 1) F)))
      )
      (main_s4 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main_s2 A B E F)
        (and (= D F) (= C (+ 1 E)) (not (= E (+ (- 1) F))))
      )
      (main_s4 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main_init_p A B E F)
        (and (= C 0) (not (<= F 1)) (= D F))
      )
      (main_s1 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (and (= A C) (= B D))
      )
      (main_init_p A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main_s4 A B C D)
        (and (= E C) (= C D) (= F D))
      )
      CHC_COMP_FALSE
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main_s2 A B C D)
        (and (= E C) (= C D) (= F D))
      )
      CHC_COMP_FALSE
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        CHC_COMP_FALSE
      )
      false
    )
  )
)

(check-sat)
(exit)
