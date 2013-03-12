(define (square x) (* x x))

(define (improve guess x)
   (average guess (/ x guess)))

(define (average x y)
   (/ (+ x y) 2))

(define (good-enough? guess x)
   (< (abs (- (improve guess x) guess)) (* guess 0.001)))

(define (sqrt-iter guess x)
  (if (< (abs guess) 1e-100) 0
      (if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x))))

(define (my-sqrt x) 
  (cond ((< (abs x) 1e-100) 0)
        ((eqv? x +inf.0) +inf.0)
        ((eqv? x -inf.0) -inf.0i)
        ((< x 0.0) (* +i (sqrt-iter 1.0 (abs x))))
      (else (sqrt-iter 1.0 x))))

(square .00125)
(my-sqrt 1.5625e-06)
(square 2.56e+20)
(my-sqrt 6.5536e+40)

(my-sqrt -16.0)