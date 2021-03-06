(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun f_s1 (Int) Bool)
(declare-fun f_s1_2_1 (Int) Bool)
(declare-fun f_s3 (Int Int) Bool)
(declare-fun f_sf (Int Int) Bool)
(declare-fun f_sf_3_1 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (f_s1 var2) (and (and (= (+ var2 (* (- 1) var1)) 10) (= (+ var0 (* (- 1) var1)) 10)) (<= 0 (+ (- 91) var1))))) (f_sf var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (and (f_s1 var4) (f_sf var3 var2)) (and (and (and (= (+ var3 (* (- 1) var1)) 12) (= var4 var1)) (= var2 var0)) (<= 0 (+ 100 (* (- 1) var1)))))) (f_s3 var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (f_s1_2_1 var1) (and (= (+ var1 (* (- 1) var0)) (- 12)) (<= 0 (+ 112 (* (- 1) var0)))))) (f_s1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (f_s1 var1) (= var1 var0))) (f_s1_2_1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (and (f_s3 var4 var3) (f_sf_3_1 var3 var2)) (and (= var4 var1) (= var2 var0)))) (f_sf var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (f_sf var3 var2) (and (= var2 var1) (= var3 var0)))) (f_sf_3_1 var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (f_s3 var2 var1) (= var1 var0))) (f_s1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (<= 0 (+ 100 (* (- 1) var0))) (= var0 (* (- 2) var1)))) (f_s1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (f_sf var1 var0) (and (and (not (= var0 92)) (<= 0 (+ 100 (* (- 1) var1)))) (= var1 (* (- 2) var2)))))))
(check-sat)
