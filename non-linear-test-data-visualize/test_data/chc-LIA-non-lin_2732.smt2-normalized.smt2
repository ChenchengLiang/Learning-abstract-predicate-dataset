(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun hanoi_3 (Int Int) Bool)
(declare-fun hanoi_3_1_1 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (= var1 1) (= var0 1))) (hanoi_3 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (hanoi_3_1_1 var3 var2) (and (and (= (+ var3 (* (- 1) var1)) (- 1)) (= (+ var0 (* (- 2) var2)) 1)) (not (= var1 1))))) (hanoi_3 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (hanoi_3 var3 var2) (and (= var3 var1) (= var2 var0)))) (hanoi_3_1_1 var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (hanoi_3 var1 var0) (and (and (<= 0 (+ 31 (* (- 1) var1))) (<= 0 (+ (- 1) var1))) (<= 0 (+ (- 1) (* (- 1) var0))))))))
(check-sat)
