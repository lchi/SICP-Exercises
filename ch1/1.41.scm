(define (double func)
  (lambda (x) (func (func x)))) 