(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun main_1_1 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (<= 0 (+ (* (- 1) var1) 1023)) (= var0 var1))) (main_1_1 var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (main_1_1 (+ var1 (- 1)) (+ var0 (- 1))) (not (<= 0 (+ (+ (+ var1 (- 1)) 1) (- 1024)))))) (main_1_1 var1 var0))))
(assert (forall ((var0 Bool) (var1 Bool) (var2 Int) (var3 Int)) (not (and (main_1_1 var3 var2) (and (and (and (not var1) (not (= (+ var2 1) (+ var3 1)))) (not var0)) (<= 0 (+ (+ var3 1) (- 1024))))))))
(check-sat)
