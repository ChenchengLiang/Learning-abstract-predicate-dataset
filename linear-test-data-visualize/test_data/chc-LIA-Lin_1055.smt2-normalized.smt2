(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun main_1_1 (Int Int Int Int) Bool)
(declare-fun main_1_1_1_1 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (= var3 var2) (= var1 var0)) (not (= var2 0)))) (main_1_1 var3 var1 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (main_1_1_1_1 var7 var6 var5 var4) (and (and (and (and (= (+ var4 (* (- 1) var3)) 1) (= (+ var5 (* (- 1) var2)) 1)) (= var7 var1)) (= var6 var0)) (not (= var2 0))))) (main_1_1 var1 var0 var2 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (main_1_1 var7 var6 var5 var4) (and (and (and (= var4 var3) (= var5 var2)) (= var7 var1)) (= var6 var0)))) (main_1_1_1_1 var1 var0 var2 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (main_1_1 var2 var2 var1 var0) (and (= var1 1) (not (= var0 1)))))))
(check-sat)
