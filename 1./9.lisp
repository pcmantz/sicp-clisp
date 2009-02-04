;; 9.lisp
;; written by Paul Mantz <pcmantz@mcpantz.org>
;; contains solutions for 1.9 of SICP

;; In the two examples given, the first implementation of plus is
;; recursive since it is unwinding a, after the recursion finished the
;; stack will be evaluated.  The second implementation is iterative
;; and uses b as a counter until a goes to 0.


;; these are just me goofing about with examples

(defun factorial (n)
  (defun iter (counter product)
    (if (> counter n)
        product
        (iter (incr counter) (* counter product))))
  (iter 1 1))

(defun incr (x)
  (+ x 1))
