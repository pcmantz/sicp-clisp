;; 4.lisp
;; written by Paul Mantz
;; Solution to Exercise 1.4 of the Structure and Interpretation of
;; Computer Programs


(defun a-plus-abs-b (a b) ((if (> b 0) + -) a b))
