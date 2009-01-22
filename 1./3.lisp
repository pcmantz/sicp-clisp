
(defun sq (x) (* x x))



(defun arith (a b c)
  (cond ((and (<= a b) (<= a c))  (+ (sq b) (sq c)))
        ((and (<= b a) (<= b c))  (+ (sq a) (sq c)))
        ((and (<= c a) (<= c b))  (+ (sq a) (sq b)))))


(arith 3 2 1)

(arith 4 9 3)

(arith 8 3 4)