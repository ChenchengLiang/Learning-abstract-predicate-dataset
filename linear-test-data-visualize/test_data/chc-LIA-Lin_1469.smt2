; seahorn-benchmarks/./sv_comp_flat_small/loop-lit/gr2006_true-unreach-call.c.flat_000.smt2
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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (v_9 Int) (v_10 Int) ) 
    (=>
      (and
        (main_1 v_9 B C)
        (and (= 0 v_9)
     (or (not D) (not F) (= A G))
     (or (not D) (not F) (= I H))
     (or (not D) (not F) (= H 0))
     (or (not E) (and D F))
     (= E true)
     (or (not D) (not F) (= G 0))
     (= 1 v_10))
      )
      (main_1 v_10 I A)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (v_14 Int) (v_15 Int) ) 
    (=>
      (and
        (main_1 v_14 E F)
        (and (= 1 v_14)
     (= A (not (<= 50 E)))
     (= K (+ B F))
     (= B (ite A 1 (- 1)))
     (= L (+ 1 E))
     (or (not G) (not N) (= J I))
     (or (not G) (not N) (= I L))
     (or (not G) (not N) (= D H))
     (or (not G) (not N) (= H K))
     (or (not C) (not G) (not N))
     (or (not M) (and G N))
     (= M true)
     (= C (not (<= 0 K)))
     (= 1 v_15))
      )
      (main_1 v_15 J D)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Bool) (M Bool) (N Int) (O Bool) (P Bool) (v_16 Int) (v_17 Int) ) 
    (=>
      (and
        (main_1 v_16 G H)
        (and (= 1 v_16)
     (= C (not (<= 50 G)))
     (= K (+ 1 G))
     (= D (ite C 1 (- 1)))
     (= J (+ D H))
     (or (not M) (not I) (= F N))
     (or (not M) (not I) (= N G))
     (or (not M) E (not I))
     (or (not O) (and L P))
     (or (not L) (= B (not A)))
     (or (not L) (= A (= F 100)))
     (or (not L) (and M I))
     (or (not L) B)
     (= O true)
     (= E (not (<= 0 J)))
     (= 2 v_17))
      )
      (main_1 v_17 G H)
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
