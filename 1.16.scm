;iterative successive-square expt
(define (fast-expt-iter b n)
  (expt-iter b n b))

(define (expt-iter b n a)
  (cond ((= n 1) b)
	((even? n) (expt-iter 
		    (square b)
		    (/ n 2)
		    a))
	(else (expt-iter
	       (* b a)
	       (- n 1)
	       a))))

(define (even? n)
  (= (remainder n 2) 0))

(define (square x)
  (* x x))