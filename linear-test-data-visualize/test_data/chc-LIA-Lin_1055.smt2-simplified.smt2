(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun main_1_1 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Bool) (var4 Int)) (or (not (and (and (and (not (= var4 0)) (not var3)) (= var2 var4)) (= var1 var0))) (main_1_1 var4 var1 var2 var0))))
(assert (forall ((var0 Bool) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (main_1_1 var4 var3 (+ var2 1) (+ var1 1)) (and (not (= var2 0)) (not var0)))) (main_1_1 var4 var3 var2 var1))))
(assert (forall ((var0 Bool) (var1 Int) (var2 Int)) (not (and (main_1_1 var2 var2 1 var1) (and (not (= var1 1)) (not var0))))))
(check-sat)
