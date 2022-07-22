; hcai-bench/./svcomp/O0/recHanoi02_true-unreach-call_true-no-overflow_true-termination_000.smt2
(set-logic HORN)

(declare-fun |hanoi@_call| ( Int ) Bool)
(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |hanoi| ( Bool Bool Bool Int Int ) Bool)
(declare-fun |hanoi@.split| ( Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 true) (= v_3 true) (= v_4 true))
      )
      (hanoi v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 false) (= v_3 true) (= v_4 true))
      )
      (hanoi v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 false) (= v_3 false) (= v_4 false))
      )
      (hanoi v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) ) 
    (=>
      (and
        true
      )
      (hanoi@_call A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Int) (H Bool) (I Bool) (J Int) (K Bool) (L Bool) (M Int) (N Int) (v_14 Bool) (v_15 Bool) ) 
    (=>
      (and
        (hanoi@_call N)
        (hanoi F v_14 v_15 A B)
        (and (= v_14 false)
     (= v_15 false)
     (or (not H) (not F) (not E))
     (or (not I) (not H) (= J 1))
     (or (not I) (not H) (= M J))
     (or (not I) (not H) E)
     (or (not K) (and K F) (and I H))
     (or (not K) (not F) (= G D))
     (or (not K) (not F) (= M G))
     (or (not F) (= A (+ (- 1) N)))
     (or (not F) (= C (* 2 B)))
     (or (not F) (= D (+ 1 C)))
     (or (not F) (and H F))
     (or (not I) H)
     (or (not L) (and L K))
     (= L true)
     (= E (= N 1)))
      )
      (hanoi@.split M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (hanoi@.split B A)
        (and (= v_2 true) (= v_3 false) (= v_4 false))
      )
      (hanoi v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        true
      )
      main@entry
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (v_10 Bool) (v_11 Bool) ) 
    (=>
      (and
        main@entry
        (hanoi G v_10 v_11 D E)
        (let ((a!1 (or (not G) (= F (not (<= E (- 1))))))
      (a!2 (= B (or (not (<= A 30)) (not (>= A 0))))))
  (and (= v_10 false)
       (= v_11 false)
       (= A (+ (- 1) D))
       a!1
       (or (not G) (and G C))
       (or (not G) (not F))
       (or (not H) (and H G))
       (or (not I) (and I H))
       (or (not J) (and J I))
       (not B)
       (= J true)
       a!2))
      )
      main@verifier.error.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@verifier.error.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
