; chc-comp19-benchmarks/./lia-nonlin/chc-lia-nonlin-0047_000.smt2
(set-logic HORN)

(declare-fun |m$unknown:2| ( Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (|m$unknown:2| F A)
        (|m$unknown:2| E F)
        (and (= D E) (= A (+ 11 B)) (= (= 0 C) (<= B 100)) (= 0 C))
      )
      (|m$unknown:2| D B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (and (= C (+ (- 10) B)) (= (= 0 A) (<= B 100)) (not (= 0 A)))
      )
      (|m$unknown:2| C B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (|m$unknown:2| B D)
        (and (= (not (= 0 A)) (= B 91))
     (not (= 0 C))
     (= 0 A)
     (= (not (= 0 C)) (<= D 95)))
      )
      false
    )
  )
)

(check-sat)
(exit)
