(define (square x) (* x x))

(define (improve guess x)
   (average guess (/ x guess)))

(define (average x y)
   (/ (+ x y) 2))

(define (good-enough? guess x)
   (< (abs (- (improve guess x) guess)) (* guess 0.001)))

(define (sqrt-iter guess x)
   (if (= guess 0) 0
       (if (good-enough? guess x)
           guess
           (sqrt-iter (improve guess x)
                      x))))
(square .00125)
(sqrt-iter 1.0 1.5625e-06)
(square 2.56e+20)
(sqrt-iter 1.0 6.5536e+40)
(sqrt-iter 0 100)