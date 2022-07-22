; hcai-bench/./svcomp/O0/Addition01_true-unreach-call_true-no-overflow_true-termination_000.smt2
(set-logic HORN)

(declare-fun |addition| ( Bool Bool Bool Int Int Int ) Bool)
(declare-fun |main@entry| ( ) Bool)
(declare-fun |addition@_1| ( Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |addition@.split| ( Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Bool) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (and true (= v_3 true) (= v_4 true) (= v_5 true))
      )
      (addition v_3 v_4 v_5 A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Bool) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (and true (= v_3 false) (= v_4 true) (= v_5 true))
      )
      (addition v_3 v_4 v_5 A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Bool) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (and true (= v_3 false) (= v_4 false) (= v_5 false))
      )
      (addition v_3 v_4 v_5 A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        true
      )
      (addition@_1 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Bool) (L Bool) (M Int) (N Bool) (O Bool) (P Int) (Q Bool) (R Int) (S Bool) (T Bool) (U Int) (V Bool) (W Bool) (X Int) (Y Int) (Z Int) (v_26 Bool) (v_27 Bool) (v_28 Bool) (v_29 Bool) ) 
    (=>
      (and
        (addition@_1 Y Z)
        (addition L v_26 v_27 A B G)
        (addition Q v_28 v_29 E F J)
        (let ((a!1 (or (not C) (= D (not (<= Z 0)))))
      (a!2 (or (not N) (= H (not (<= 0 Z))))))
  (and (= v_26 false)
       (= v_27 false)
       (= v_28 false)
       (= v_29 false)
       (or (not V) (and V Q) (and V L) (and T S) (and O N))
       (or (not N) (not D) (not C))
       (or (not N) (not L) H)
       (or (not O) (not N) (= P I))
       (or (not O) (not N) (= X P))
       (or (not O) (not N) (not H))
       (or (not Q) D (not C))
       (or (not S) (not K) (not C))
       (or (not T) (not S) (= U Y))
       (or (not T) (not S) (= X U))
       (or (not T) (not S) K)
       (or (not V) (not L) (= M G))
       (or (not V) (not L) (= X M))
       (or (not V) (not Q) (= R J))
       (or (not V) (not Q) (= X R))
       a!1
       (or (not C) (and S C))
       (or (not L) (= A (+ (- 1) Y)))
       (or (not L) (= B (+ 1 Z)))
       (or (not L) (and N L))
       a!2
       (or (not N) (and N C))
       (or (not O) N)
       (or (not Q) (= E (+ 1 Y)))
       (or (not Q) (= F (+ (- 1) Z)))
       (or (not Q) (and Q C))
       (or (not T) S)
       (or (not W) (and W V))
       (= W true)
       (= K (= Z 0))))
      )
      (addition@.split X Y Z)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Bool) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (addition@.split C A B)
        (and (= v_3 true) (= v_4 false) (= v_5 false))
      )
      (addition v_3 v_4 v_5 A B C)
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
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (v_13 Bool) (v_14 Bool) ) 
    (=>
      (and
        main@entry
        (addition J v_13 v_14 E F G)
        (let ((a!1 (= C (or (not (<= F 1073741823)) (not (>= F 0)))))
      (a!2 (= A (or (not (<= E 1073741823)) (not (>= E 0))))))
  (and (= v_13 false)
       (= v_14 false)
       (or (not D) a!1)
       (or (not D) (and D B))
       (or (not J) (= I (= G H)))
       (or (not J) (= H (+ E F)))
       (or (not J) (and J D))
       (or (not J) (not I))
       (or (not C) (not D))
       (or (not K) (and K J))
       (or (not L) (and L K))
       (or (not M) (and M L))
       (not A)
       (= M true)
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
