; sv-comp/./LIA/Eldarica/RECUR/mccarthy91.nts_000.smt2
(set-logic HORN)

(declare-fun |f_s2| ( Int Int Int Int ) Bool)
(declare-fun |f_s3| ( Int Int Int Int ) Bool)
(declare-fun |f_s1| ( Int Int Int Int ) Bool)
(declare-fun |main_s3| ( Int Int Int Int ) Bool)
(declare-fun |main_s2| ( Int Int Int Int ) Bool)
(declare-fun |f_sf| ( Int Int Int Int ) Bool)
(declare-fun |main_s1| ( Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main_s1 A B E F)
        (and (<= D 100) (= E C))
      )
      (main_s2 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (and (= A C) (= B D))
      )
      (main_s1 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (f_s1 A B E F)
        (and (= C (+ 11 F)) (<= F 100) (= F D))
      )
      (f_s2 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (f_s1 A B E F)
        (and (= C (+ (- 10) F)) (not (<= F 100)) (= F D))
      )
      (f_sf A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (f_s2 A B E F)
        (f_sf H G I J)
        (and (= G E) (= F D) (= I C))
      )
      (f_s3 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (f_s2 E F G H)
        (and (= B D) (= A C) (= B G))
      )
      (f_s1 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (f_s3 A B E F)
        (f_sf H G I J)
        (and (= G E) (= F D) (= I C))
      )
      (f_sf A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (f_s3 E F G H)
        (and (= B D) (= A C) (= B G))
      )
      (f_s1 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main_s2 A B E F)
        (f_sf H G I J)
        (and (= G F) (= F D) (= I C))
      )
      (main_s3 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main_s2 E F G H)
        (and (= B D) (= A C) (= B H))
      )
      (f_s1 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main_s3 A B C D)
        (and (not (= C 91)) (= C E) (= D F))
      )
      false
    )
  )
)

(check-sat)
(exit)
