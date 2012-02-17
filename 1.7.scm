(define (sqrt-iter prev guess x)
  (if (good-enough? prev guess)
      guess
      (sqrt-iter guess (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? prev next)
  (> (* .00001 prev) (abs (- prev next))))
  
