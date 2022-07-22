(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun |m$unknown:2| (Int Int) Bool)
(declare-fun |m$unknown:2_0_1| (Int Int) Bool)
(declare-fun |m$unknown:2_0_2| (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (and (|m$unknown:2_0_1| var4 var3) (|m$unknown:2_0_2| var2 var4)) (and (and (= (+ var3 (* (- 1) var1)) 11) (= var2 var0)) (<= 0 (+ 100 (* (- 1) var1)))))) (|m$unknown:2| var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (|m$unknown:2| var3 var2) (and (= var2 var1) (= var3 var0)))) (|m$unknown:2_0_1| var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (|m$unknown:2| var3 var2) (and (= var3 var1) (= var2 var0)))) (|m$unknown:2_0_2| var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (= (+ var1 (* (- 1) var0)) 10) (<= 0 (+ (- 91) var0)))) (|m$unknown:2| var0 var1))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (|m$unknown:2| var1 var0) (and (not (= var1 91)) (<= 0 (+ 95 (* (- 1) var0))))))))
(check-sat)
