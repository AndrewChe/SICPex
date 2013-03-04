(define (square x) (* x x))

(define (cube x) (* x x x))

(define (cube-improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess x)
   (< (abs (- (cube-improve guess x) guess)) (abs (* guess 0.001))))

(define (cube-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-root-iter (cube-improve guess x)
                      x)))

(define (cube-root x)
  (if (= x 0) 0
      (cube-root-iter 1.0 x)))

(cube -3)
(cube-root -27)
