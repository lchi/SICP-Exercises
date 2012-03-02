(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeated f n)
  (define (repeat f orig n)
    (if (<= n 1)
	f
	(repeat (compose orig f) orig (- n 1))))
  (repeat f f n))

(define dx .00001)
(define (smooth f)
  (lambda (x) (/ (+ (f x)
		    (f (+ x dx))
		    (f (- x dx)))
		 3)))

; is this correct?
(define (n-smooth f n)
  (repeated (smooth f) (- n 1)))