; sv-comp/./LIA/Eldarica/RECUR/mccarthy92.nts_000.smt2
(set-logic HORN)

(declare-fun |main_s1| ( Int Int Int Int Int Int ) Bool)
(declare-fun |f_s2| ( Int Int Int Int ) Bool)
(declare-fun |f_s3| ( Int Int Int Int ) Bool)
(declare-fun |f_s1| ( Int Int Int Int ) Bool)
(declare-fun |f_sf| ( Int Int Int Int ) Bool)
(declare-fun |main_s3| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main_s2| ( Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main_s1 A B C G H I)
        (and (= H E) (= G D) (<= F 100) (= (mod F 2) 0))
      )
      (main_s2 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (and (= B E) (= A D) (= C F))
      )
      (main_s1 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (f_s1 A B E F)
        (and (= C (+ 12 F)) (<= F 100) (= F D))
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
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main_s2 A B C G H I)
        (f_sf K J L M)
        (and (= J I) (= I F) (= G D) (= L E))
      )
      (main_s3 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main_s2 E F G H I J)
        (and (= B J) (= B D) (= A C))
      )
      (f_s1 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main_s3 A B C D E F)
        (and (not (= E 92)) (= E H) (= D G) (= F I))
      )
      false
    )
  )
)

(check-sat)
(exit)
