;simpson's rule
(define (simpson f a b n)
  (define h
    (/ (- b a) n))
  (define (yk k)
    (f (+ a (* k h))))
  (define (even? x) 
    (= (remainder x 2) 0))
  (define (simp-sum k)
    (cond ((> k n) 0)
	  ((or (= k n) (= k 1))
	   (+ (yk k) 
	      (simp-sum (+ k 1))))
	  (else 
	   (+ (* (/ 4 (+ 1 (modulo k 2))) (yk k))
	      (simp-sum (+ k 1))))))
  (define apply-simp 
    (* (/ h 3) (simp-sum 0)))
  apply-simp)

(define (identity x) x)
(define (cube x) (* x x x))