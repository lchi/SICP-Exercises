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

(define (good-enough-crt? guess x)
  (< (abs (- (improve-crt guess x) guess))
     (* guess .001)))

(define (crt guess x)
  (if (good-enough-crt? guess x)
      guess
      (crt (improve-crt guess x)
	   x)))

(define (improve-crt guess x)
  (/
   (+ (/ x (* guess guess)) (* 2 guess))
   3))