(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

;(define (good-enough? prev next)
;  (> (* .00001 prev) (abs (- prev next))))
(define (good-enough? guess x) 
  (< (abs (- (improve guess x) guess)) 
     (* guess .001)))  
