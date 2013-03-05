(define (inc x)
  (+ x 1))

(define (dec x)
  (- x 1))

(define (recur-plus a b)
  (define (plus a b)
    (if (= a 0)
        b
        (inc (plus (dec a) b))))
  (if (> a 0)(plus a b)
      (- (plus (- a) (- b)))))
;; This is recursive process because it's expands 
;;and then narrows and all evaluations are stored in memory

(define (iter-plus a b)
  (define (plus a b)
    (if (= a 0)
        b
        (plus (dec a) (inc b))))
  (if (> a 0)(plus a b)
      (- (plus (- a) (- b)))))
;; This is iterative process because each step knows all to continue evaluation
;; and it needs fixed value of memory

(iter-plus -3 5)
(recur-plus -4 2)
;; With large arguments it's appears as stopping evaluation in recursive way
;; because of memory loading (on my computer with following arguments)
(iter-plus 5e+6 6e+6)
(recur-plus 5e+6 6e+6)