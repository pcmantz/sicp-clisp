;; 10.lisp
;; written by Paul Mantz
;; definitions and answers for 1.10 of SICP

(defun A (x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (t (A (- x 1)
              (A x
                 (- y 1))))))


(print (A 1 10))
(print (A 2 4))
(print (A 3 3))

;; (defun f (n) (A 0 n)) => (defun f (n)  (* 2 y))
;; (defun g (n) (A 1 n)) => (defun g (n) (expt 2 n))
;; (defun h (n) (A 2 n)) => (defun h (n) (cond ((= n 1) 2) (t expt (h (- n 1)) 2 )))
