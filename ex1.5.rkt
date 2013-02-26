(define (p) (p))
(define (test x y)
  (if (= x 0)
0 y))

(test 0 (p))

;; because applicative order evaluating are using, program never ends, all the time value of 'p' tries to get itself and loops