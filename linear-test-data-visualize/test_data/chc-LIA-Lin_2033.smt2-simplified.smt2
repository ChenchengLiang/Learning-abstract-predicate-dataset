(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun main_1_1 (Int Int Int Int) Bool)
(declare-fun main_1_2 () Bool)
(assert (forall ((var0 Int) (var1 Bool) (var2 Bool) (var3 Bool) (var4 Bool) (var5 Bool) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (= (+ (+ var10 (* (- 1) var9)) var8) 0) (= (* 2 var7) var6)) (not var5)) (not var4)) (not var3)) (not var2)) (not var1)) (<= 0 (+ (* (- 1) var9) 999999))) (<= 0 (+ (+ var9 (* (- 1) var8)) (* (- 1) var6)))) (<= 0 (+ (+ var9 (* (- 1) var8)) (- 3)))) (<= 0 (+ var8 (- 1)))) (<= 0 (+ (+ var7 (* (- 1) var6)) 999999))) (<= 0 (+ var7 (- 1)))) (= var0 0))) (main_1_1 var8 var0 var7 var9))))
(assert (forall ((var0 Bool) (var1 Bool) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (main_1_1 (+ var5 (- 2)) (+ var4 (- 1)) var3 var2) (and (and (and (and (and (not var1) (not var0)) (<= 0 (+ (+ var3 (* (- 1) var4)) (- 1)))) (<= 0 (+ var2 (* (- 1) var5)))) (<= 0 var5)) true))) (main_1_1 var5 var4 var3 var2))))
(assert (forall ((var0 Bool) (var1 Bool) (var2 Bool) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (main_1_1 var6 var5 var4 var3) (and (and (and (and (and (and (not var2) (not var1)) (not var0)) (<= 0 (+ (+ var4 (* (- 1) (+ var5 1))) (- 1)))) (<= 0 (+ (+ var3 (* (- 1) var6)) (- 2)))) (<= 0 (+ (* (- 1) var6) (- 3)))) true))) main_1_2)))
(assert (forall ((var0 Bool) (var1 Bool) (var2 Bool) (var3 Bool) (var4 Bool) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (or (not (and (main_1_1 var8 var7 var6 var5) (and (and (and (and (and (not var4) (not var3)) (not var2)) (<= 0 (+ (+ (* (- 1) var5) var8) 1))) (= var1 var0)) var0))) main_1_2)))
(assert (forall ((var0 Bool) (var1 Bool)) (not (and main_1_2 (and (= var1 var0) var0)))))
(check-sat)
