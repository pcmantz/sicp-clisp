;; 6.lisp
;; written by Paul Mantz <pcmantz@mcpantz.org>
;; solution to 1.6 of SICP

(defun my-sqrt (x)
  (my-sqrt-iter (/ x 2) x))

(defun my-sqrt-iter (guess x)
  (if (good-enough? guess x)
          guess
          (my-sqrt-iter (improve guess x)
                        x)))

(defun new-if (pred true-clause false-clause)
  (cond (pred true-clause)
        (t false-clause)))

(defun good-enough? (guess x)
  (<  (abs (- (square guess) x))
      0.001))

(defun improve (guess x)
  (average guess (/ x guess)))

(defun square (x)
  (* x x))

(defun average (x y)
  (/ (+ x y) 2))

;; Switching if for my-if results in a huge freaking stack that ends
;; up overflowing.  If is a short-circuit that allows for
;; instantaneous evaluation of the binary clause.