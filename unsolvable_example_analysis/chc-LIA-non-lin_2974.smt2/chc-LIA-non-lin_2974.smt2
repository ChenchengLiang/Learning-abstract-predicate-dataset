; chc-comp19-benchmarks/./lia-nonlin/chc-lia-nonlin-0092_000.smt2
(set-logic HORN)

(declare-fun |gib$unknown:4| ( Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (|gib$unknown:4| H D I J)
        (|gib$unknown:4| G A I J)
        (and (= (not (= 0 C)) (= B 1))
     (= 0 E)
     (= 0 C)
     (= F (+ G H))
     (= D (+ (- 2) B))
     (= A (+ (- 1) B))
     (= (not (= 0 E)) (= B 0)))
      )
      (|gib$unknown:4| F B I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (and (not (= 0 A)) (= C D) (= (not (= 0 A)) (= B 0)))
      )
      (|gib$unknown:4| C B E D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (and (= (not (= 0 A)) (= B 1))
     (= 0 C)
     (not (= 0 A))
     (= D E)
     (= (not (= 0 C)) (= B 0)))
      )
      (|gib$unknown:4| D B E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (|gib$unknown:4| B H F G)
        (let ((a!1 (= (not (= 0 C)) (and (not (= 0 D)) (not (= 0 E))))))
  (and (= (not (= 0 D)) (>= G 0))
       a!1
       (= (not (= 0 A)) (>= B 0))
       (not (= 0 C))
       (= 0 A)
       (= (not (= 0 E)) (>= F 0))))
      )
      false
    )
  )
)

(check-sat)
(exit)
