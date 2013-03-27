#lang scheme
(define (square x) (* x x))

(define eps 0.001)

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
   (/ (+ x y) 2))

(define (good-enough? guess x)
   (< (abs (- (improve guess x) guess)) (* guess eps)))

(define (sqrt-iter guess x)
      (if (good-enough? guess x) guess
          (sqrt-iter (improve guess x)
                     x)))

(define (my-sqrt x) 
  (cond ((< (abs x) eps) 0)
    ((< x 0.0) (* +i (sqrt-iter 1.0 (abs x))))
      (else (sqrt-iter 1.0 x))))

(square 2.56e+20)
(my-sqrt 6.5536e+40)

(my-sqrt 1e-200)
(my-sqrt 0.0)
(my-sqrt 0)
(my-sqrt -0.0)
