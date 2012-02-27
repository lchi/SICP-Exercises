(define (compose f g)
  (lambda (x) (f (g x))))
(define (repeated f n)
  (define (repeat f orig n)
    (if (<= n 1)
	f
	(repeat (compose orig f) orig (- n 1))))
  (repeat f f n))