; sv-comp/./LIA/Eldarica/RECUR/parity.nts_000.smt2
(set-logic HORN)

(declare-fun |is_odd_q2| ( Int Int Int Int ) Bool)
(declare-fun |is_even_q0| ( Int Int Int Int ) Bool)
(declare-fun |main_q0| ( Int Int Int Int ) Bool)
(declare-fun |is_odd_q1| ( Int Int Int Int ) Bool)
(declare-fun |is_even_q2| ( Int Int Int Int ) Bool)
(declare-fun |is_even_q1| ( Int Int Int Int ) Bool)
(declare-fun |main_q2| ( Int Int Int Int ) Bool)
(declare-fun |main_q1| ( Int Int Int Int ) Bool)
(declare-fun |is_odd_q0| ( Int Int Int Int ) Bool)
(declare-fun |is_odd_q3| ( Int Int Int Int ) Bool)
(declare-fun |is_even_q3| ( Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main_q0 A B E F)
        (and (>= D 0) (= (mod D 2) 0))
      )
      (main_q1 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (and (= A C) (= B D))
      )
      (main_q0 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (is_even_q0 A B E F)
        (and (= E C) (not (<= F 0)) (= F D))
      )
      (is_even_q2 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (is_even_q1 A B E F)
        (and (= C 1) (= F D))
      )
      (is_even_q3 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (is_even_q0 A B E F)
        (and (= F D) (= E C) (= F 0))
      )
      (is_even_q1 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (is_odd_q0 A B E F)
        (and (= E C) (not (<= F 0)) (= F D))
      )
      (is_odd_q2 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (is_odd_q1 A B E F)
        (and (= C 0) (= F D))
      )
      (is_odd_q3 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (is_odd_q0 A B E F)
        (and (= F D) (= E C) (= F 0))
      )
      (is_odd_q1 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (is_odd_q2 A B E F)
        (is_even_q3 H G I J)
        (and (= I C) (= G (+ (- 1) F)) (= F D))
      )
      (is_odd_q3 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (is_odd_q2 E F G H)
        (and (= B D) (= A C) (= B (+ (- 1) H)))
      )
      (is_even_q0 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (is_even_q2 A B E F)
        (is_odd_q3 H G I J)
        (and (= I C) (= G (+ (- 1) F)) (= F D))
      )
      (is_even_q3 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (is_even_q2 E F G H)
        (and (= B D) (= A C) (= B (+ (- 1) H)))
      )
      (is_odd_q0 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main_q1 A B E F)
        (is_even_q3 H G I J)
        (and (= I C) (= G F) (= F D))
      )
      (main_q2 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main_q1 E F G H)
        (and (= B H) (= A C) (= B D))
      )
      (is_even_q0 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main_q2 A B C D)
        (= C 0)
      )
      false
    )
  )
)

(check-sat)
(exit)
