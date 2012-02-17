; recursive
(define (f-recur n)
  (if (< n 3)
      n
      (+ (f-recur (- n 1)) 
	 (* 2 (f-recur (- n 2)))
	 (* 3 (f-recur (- n 3))))))

;iterative
(define (f-iterative n)
  (if (< n 3)
      n
      (f-iter 0 1 2 3 n)))
 
(define (f-iter m3 m2 m1 counter n)
  (if (> counter n)
      m1
      (f-iter m2 m1 (+ (* 3 m3)
		       (* 2 m2)
		       m1) 
	      (+ 1 counter)  n)))