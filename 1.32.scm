(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) 
		(accumulate 
		 combiner 
		 null-value
		 term
		 (next a)
		 next
		 b))))

(define (square x) (* x x))
(define (identity x) x)
(define (inc x) (+ x 1))

(define (! x) 
  (accumulate * 1 identity 1 inc x))