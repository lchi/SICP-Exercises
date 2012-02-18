;fast multiplication using double and halve
(define (fast-mult x y)
  (define (even? x)
    (= (remainder x 2) 0))
  (define (double x)
    (* x 2))
  (define (halve x)
    (/ x 2))
  (define (mult a b m orig)
    (cond ((= b 0) a)
	  ((> b m) (mult 
		    (double a) 
		    (- b m) 
		    (double m)
		    orig))
	  (else 
	   (mult 
	    (+ a orig) 
	    (- b 1) 
	    (+ m 1)
	    orig))))
  (mult (max x y) (- (min x y) 1) 1 (max x y)))
  