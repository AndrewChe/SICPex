(define (square x) (* x x))

(define (sum-of-squares x y)
   (+ (square x) (square y)))

(define (sum-of-largest x y z)
  (if (< x y) (if (< x z) (sum-of-squares y z)
                  (sum-of-squares x y))
      (if (< y z) (sum-of-squares x z)
          (sum-of-squares x y)))) 

(sum-of-largest 4 3 1)