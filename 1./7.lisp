;; 7.lisp
;; written by Paul Mantz <pcmantz@mcpantz.org>
;; Implements solutions to 1.7 of SICP

(defun my-sqrt (x)
  (my-sqrt-iter (/ x 2) x))

(defun my-sqrt-iter (guess x)
  (if (good-enough? guess x)
          guess
          (my-sqrt-iter (improve guess x)
                        x)))


;; We need some sort of metric that gets more tolerant as num gets
;; bigger.  Is linearity sufficient?  An additional division in here
;; would suck.
;;
(defun good-enough? (sqrt-guess num)
  (< (diff (square sqrt-guess) num)
     (* num 0.0001)))

(defun diff (x y)
  (abs (- x y)))

(defun improve (guess x)
  (average guess (/ x guess)))

(defun square (x)
  (* x x))

(defun average (x y)
  (/ (+ x y) 2))

(defun test-my-sqrt (x)
  (diff (sqrt x) (my-sqrt x)))
