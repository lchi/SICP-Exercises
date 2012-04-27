(define (square x) (* x x))

(define (sum-of-squares a b)
  (+ (square a) (square b)))

(define (min-of a b c)
  (and (<= a b) (<= a c)))

(define (max-sum-of-squares a b c)
  (cond ((min-of a b c) (sum-of-squares b c))
	((min-of b a c) (sum-of-squares a c))
	((min-of c a b) (sum-of-squares a b))))
  
