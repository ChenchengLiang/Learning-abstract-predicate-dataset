(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun id_3 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Bool) (var3 Bool) (var4 Bool) (var5 Bool) (var6 Bool) (var7 Bool) (var8 Bool) (var9 Bool)) (or (not (and (and (and (and (and (and (and (and (and (not var9) (not var8)) (not var7)) (not var6)) (not var5)) (not var4)) (not var3)) (not var2)) (= var1 0)) (= var0 0))) (id_3 var0 var1))))
(assert (forall ((var0 Bool) (var1 Bool) (var2 Bool) (var3 Bool) (var4 Bool) (var5 Bool) (var6 Int) (var7 Int)) (or (not (and (id_3 (+ var7 (- 1)) (+ var6 (- 1))) (and (and (and (and (and (and (not var5) (not var4)) (not var3)) (not (= var7 0))) (not var2)) (not var1)) (not var0)))) (id_3 var7 var6))))
(assert (forall ((var0 Bool) (var1 Bool) (var2 Bool) (var3 Int)) (not (and (id_3 15 var3) (and (and (and (not var2) (not var1)) (not (= var3 15))) (not var0))))))
(check-sat)
