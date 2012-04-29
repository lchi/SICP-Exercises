(define (make-rat n d)
  (cond ((and (<= 0 n) (<= 0 d)) (cons n d))
        ((and (>= 0 n) (>= 0 d)) (cons (* -1 n) (* -1 d)))
        ((< n 0) (cons n d))
        ((< d 0) (cons (* -1 n) (* -1 d)))))

(define (numer x) (car x))

(define (denom x) (cdr x))


