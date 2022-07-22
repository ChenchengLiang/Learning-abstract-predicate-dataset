(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun main_1_1 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (= var1 0) (= var0 0))) (main_1_1 var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Bool)) (or (not (and (main_1_1 (- 2) (- 1)) (and (and (not var2) (= var1 0)) (= var0 0)))) (main_1_1 var1 var0))))
(assert (forall ((var0 Int) (var1 Bool) (var2 Bool) (var3 Int) (var4 Int)) (or (not (and (main_1_1 (- 2) (+ var4 (- 1))) (and (and (and (and (= (* 2 var4) var3) (not var2)) (not (= var4 var3))) (not var1)) (= var0 0)))) (main_1_1 var0 var4))))
(assert (forall ((var0 Bool) (var1 Bool) (var2 Int) (var3 Int)) (or (not (and (main_1_1 (+ var3 (- 2)) (+ var2 (- 1))) (and (and (and (= (* 2 var2) var3) (not var1)) (not (= var2 var3))) (not var0)))) (main_1_1 var3 var2))))
(assert (forall ((var0 Bool) (var1 Bool) (var2 Bool) (var3 Int) (var4 Int) (var5 Int)) (not (and (main_1_1 var5 var4) (and (and (and (and (and (= (+ (* 2 var4) (* (- 1) var3)) (- 2)) (not var2)) (not (= (+ var5 (* (- 1) var3)) (- 2)))) (not (= var5 (- 2)))) (not var1)) (not var0))))))
(check-sat)
