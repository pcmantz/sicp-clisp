;; 11.lisp
;; written by Paul Mantz
;; solutions to 1.11 in SICP


(defun f1 (x)
  (defun rec (n)
    (cond ((< n 3) n)
          (t (+ (* 3 (rec (- n 3)))
                (* 2 (rec (- n 2)))
                (rec (- n 1))))))
  (rec x))

(defun f2 (x)
  (defun iter (min3 min2 min1 count)
    (cond ((> count x) min1)
          (t (iter min2
                   min1
                   (+ (* 3 min3)
                      (* 2 min2)
                      min1)
                   (+ count 1)))))
  (cond ((< x 3) x)
        (t (iter 0 1 2 3))))


(setq ok "ok")
(setq not-ok "not ok")

(defun test (x y)
  (if (= x y) ok not-ok))


(defun ftest (n)
  (test (f1 n)  (f2 n)))
