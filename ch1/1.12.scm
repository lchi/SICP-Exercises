;pascal's triangle
;find just one entry
(define (pascal row col)
  (cond ((= col 0) 1)
	((= row col) 1)
	(else (+ (pascal (- row 1) col)
		 (pascal (- row 1) (- col 1))))))
  