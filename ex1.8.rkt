(define (square x) (* x x))

(define (cube x) (* x x x))

(define (cube-improve guess x)
   (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess x)
   (< (abs (- (cube-improve guess x) guess)) (* guess 0.001)))

(define (sqrt-iter guess x)
   (if (good-enough? guess x)
           guess
           (sqrt-iter (cube-improve guess x)
                      x)))
(cube 3)
(sqrt-iter 1.0 27)
