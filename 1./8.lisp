

(setq cube-tolerance 0.0001)

(defun cube-root (x)
  (defun iter (guess)
    (if (good-enough? guess)
        guess
        (iter (improve guess))))
  (defun good-enough? (guess)
    (< (abs (- (expt guess 3)
               x))
       cube-tolerance))
  (defun improve (guess)
    (/ (+ (/ x (square guess))
          (* 2 guess))
       3.0))
  (iter 1.0))

(defun diff (x y)
  (abs (- x y)))

(defun square (x)
  (* x x))
