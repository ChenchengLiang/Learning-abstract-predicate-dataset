(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun main_1_1 (Int Int) Bool)
(declare-fun main_1_1_1_1 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (= var1 var0) (<= 0 (+ 1023 (* (- 1) var0))))) (main_1_1 var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (main_1_1_1_1 var3 var2) (and (and (= (+ var2 (* (- 1) var1)) (- 1)) (= (+ var3 (* (- 1) var0)) (- 1))) (<= 0 (+ 1023 (* (- 1) var0)))))) (main_1_1 var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (main_1_1 var3 var2) (and (= var2 var1) (= var3 var0)))) (main_1_1_1_1 var0 var1))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (main_1_1 var1 var0) (and (not (= var1 var0)) (<= 0 (+ (- 1023) var1)))))))
(check-sat)
