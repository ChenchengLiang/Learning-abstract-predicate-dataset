; seahorn-benchmarks/./sv_comp_flat_small/loops/sum03_true-unreach-call_false-termination.c.flat_000.smt2
(set-logic HORN)

(declare-fun |main_1| ( Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (v_2 Int) ) 
    (=>
      (and
        (and true (= 0 v_2))
      )
      (main_1 v_2 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (v_9 Int) (v_10 Int) ) 
    (=>
      (and
        (main_1 v_9 C D)
        (and (= 0 v_9)
     (or (not E) (not G) (= A H))
     (or (not E) (not G) (= I 0))
     (or (not E) (not G) (= H 0))
     (or (not F) (and E G))
     (= F true)
     (or (not E) (not G) (= B I))
     (= 1 v_10))
      )
      (main_1 v_10 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Bool) (v_16 Int) (v_17 Int) ) 
    (=>
      (and
        (main_1 v_16 H I)
        (and (= 1 v_16)
     (= D (or B C))
     (= C (= M 0))
     (= B (= M A))
     (= N (+ 1 I))
     (= M (+ 2 H))
     (= A (* 2 N))
     (or (not J) (not P) (= L N))
     (or (not J) (not P) (= G L))
     (or (not J) (not P) (= F K))
     (or (not J) (not P) (= K M))
     (or (not E) (not J) (not P))
     (or (not O) (and J P))
     (= O true)
     (= E (not D))
     (= 1 v_17))
      )
      (main_1 v_17 F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Bool) (L Bool) (v_12 Int) (v_13 Int) ) 
    (=>
      (and
        (main_1 v_12 F G)
        (and (= 1 v_12)
     (= D (or B C))
     (= C (= I 0))
     (= B (= I A))
     (= A (* 2 J))
     (= J (+ 1 G))
     (= I (+ 2 F))
     (or (not H) (not L) E)
     (or (not K) (and H L))
     (= K true)
     (= E (not D))
     (= 2 v_13))
      )
      (main_1 v_13 F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Int) ) 
    (=>
      (and
        (main_1 v_2 A B)
        (= 2 v_2)
      )
      false
    )
  )
)

(check-sat)
(exit)
