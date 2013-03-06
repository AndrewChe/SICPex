(define (A x y)
  (if (and (< x 0)(< y 0)) 0 
      (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1)))))))

;(A 1 10) ; 1024
;(A 2 4)  ; 65536
;(A 3 3)  ; 65536

(define (f n) (A 0 n)) ; multiplies by 2
(define (g n) (A 1 n)) ; power of 2
(define (h n) (A 2 n)) ; 2 (in power of 2 in power)(n-1 times) 2

;(A 2 4) equal (A 1 16) or (2 in power of (2 in power of (2 in power 2))
;(h 3) equal to (A 1 4) or (2 in power of 2 in power 2)
;(A 2 3)
;(A 1 (A 2 2))
;(A 1 (A 1 (A 2 1)))
;(A 1 (A 1 2)) ; 2 in power 2 in power 2
;(A 1 (A 0 (A 1 1)))
;(A 1 (A 0 2))
;(A 1 (* 2 2))
;(A 0 (A 1 (- (* 2 2) 1)))
;(A 0 (A 0 (A 1 (- (- (* 2 2) 1) 1))))
;(A 0 (A 0 (A 0 (A 1 (- (- (- (* 2 2) 1) 1) 1)))))
;(A 0 (A 0 (A 0 2)))
;(A 0 (A 0 (* 2 2)))
;(A 0 (* 2 (* 2 2)))
;(* 2 (* 2 (* 2 2)))

