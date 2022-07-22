(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun hanoi_3 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Bool) (var3 Bool) (var4 Bool) (var5 Bool) (var6 Bool) (var7 Bool) (var8 Bool) (var9 Bool)) (or (not (and (and (and (and (and (and (and (and (and (not var9) (not var8)) (not var7)) (not var6)) (not var5)) (not var4)) (not var3)) (not var2)) (= var1 1)) (= var0 1))) (hanoi_3 var0 var1))))
(assert (forall ((var0 Bool) (var1 Bool) (var2 Bool) (var3 Bool) (var4 Bool) (var5 Bool) (var6 Int) (var7 Int) (var8 Int)) (or (not (and (hanoi_3 (+ var8 (- 1)) var7) (and (and (and (and (and (and (and (= (+ (* 2 var7) (* (- 1) var6)) (- 1)) (not var5)) (not var4)) (not var3)) (not (= var8 1))) (not var2)) (not var1)) (not var0)))) (hanoi_3 var8 var6))))
(assert (forall ((var0 Bool) (var1 Bool) (var2 Bool) (var3 Bool) (var4 Int) (var5 Int)) (not (and (hanoi_3 var5 var4) (and (and (and (and (not var3) (not var2)) (not var1)) (not var0)) (and (and (<= 0 (+ (* (- 1) var5) 31)) (<= 0 (+ var5 (- 1)))) (<= 0 (+ (* (- 1) var4) (- 1)))))))))
(check-sat)
