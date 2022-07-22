(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun |m$unknown:2| (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (and (|m$unknown:2| var2 (+ var1 11)) (|m$unknown:2| var0 var2)) (<= 0 (+ 100 (* (- 1) var1))))) (|m$unknown:2| var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (and (not (= var2 0)) (<= 0 (+ var1 (- 101)))) (= (+ var0 (* (- 1) var1)) (- 10)))) (|m$unknown:2| var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (|m$unknown:2| var2 var1) (and (and (not (= var2 91)) (not (= var0 0))) (<= 0 (+ (* (- 1) var1) 95)))))))
(check-sat)
