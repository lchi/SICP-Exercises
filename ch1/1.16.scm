;iterative successive-square expt
(define (fast-expt-iter b n)
  (expt-iter b n 1))

(define (expt-iter b n a)
  (cond ((= n 0) a)
	((even? n) (expt-iter
		    b 
		    (/ n 2)
		    (* a (expt-iter 
			  b
			  (/ n 2)
			  1))))
	(else (expt-iter
	       b
	       (- n 1)
	       (* a b)))))

(define (even? n)
  (= (remainder n 2) 0))

(define (square x)
  (* x x))